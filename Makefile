build:
	docker-compose up --build --no-cache --force-rm

down:
	docker-compose down
stop:
	docker-compose stop
up:
	docker-compose up -d --build

migrate:
	docker exec laravel bash -C "php artisan migrate"
