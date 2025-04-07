# ベースイメージの指定
FROM php:8.2-fpm

# 作成した設定ファイルをコンテナ内にコピー
COPY ./php/php.ini /usr/local/etc/php/php.ini

# パッケージのインストール
RUN apt-get update \
    && apt-get -y install git zip unzip vim

RUN docker-php-ext-install pdo_mysql

# composerのインストール
RUN cd /usr/bin && curl -s http://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/bin/composer

#COPY ./php/entrypoint.sh /var/tmp
#CMD bash -E /var/tmp/entrypoint.sh && /bin/bash

# xdebugのインストール
#RUN bash -c '[[ -n "$(pecl list | grep xdebug)" ]]\
#  || (pecl install xdebug-3.1.6 && docker-php-ext-enable xdebug)'

# コンテナ内で作業する際のカレンとディレクトリの指定
WORKDIR /var/www/html