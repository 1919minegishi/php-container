start:
	docker compose up --build -d

stop:
	docker compose down

restart:
	make stop ; make start

build-api:
	docker compose exec php chown 1000:1000 ./ -R
	docker compose exec php chown www-data:www-data ./storage/ -R
	docker compose exec --user 1000 php bash -c "\
		composer install"

build-batch:
	docker compose exec php-batch chown 1000:1000 ./ -R
	docker compose exec php-batch chown www-data:www-data ./storage/ -R
	docker compose exec --user 1000 php-batch bash -c "\
		composer install"

migrate:
	docker compose run --rm -u 1000 php php artisan migrate

migrate-fresh:
	docker compose run --rm -u 1000 php php artisan migrate:fresh
