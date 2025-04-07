# ベースイメージの指定
FROM nginx:stable-alpine

# 作成した設定ファイルをコンテナ内にコピー
COPY ./web/local/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80