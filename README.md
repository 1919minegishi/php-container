## xcebug ver


## php ver
https://windows.php.net/downloads/releases/archives/
・php-8.0.25-Win32-vs16-x64.zip
→スレッドセーフの64bit

php.ini-development
コピーして
php.iniをつくる



ローカル（windows）xdebugの場所がおかしい。3.1.6
```
php -v
Failed loading c:/php/php8.0.25/ext/php_xdebug-3.1.6-8.1-vs16-x86_64.dll
PHP 8.0.25 (cli) (built: Oct 25 2022 10:49:29) ( ZTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.25, Copyright (c) Zend Technologies
```

コンテナの中、バージョン指定するようにする
```
root@07b106637286:/var/www/html# php -v
PHP 8.0.25 (cli) (built: Nov 15 2022 05:42:12) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.25, Copyright (c) Zend Technologies
    with Xdebug v3.1.6, Copyright (c) 2002-2022, by Derick Rethans
```