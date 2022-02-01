NAME = app
NAME_DB = mysql

up:
	docker-compose up

up-d:
	docker-compose up -d

up-b:
	docker-compose up --build

build:
	docker-compose build

build-n:
	docker-compose build --no-cache

stop:
	docker-compose stop

restart:
	docker-compose down
	docker-compose up -d

down:
	docker-compose down

destroy:
	docker-compose down --rmi all --volumes

ps:
	docker ps

ps-a:
	docker ps -a

login:
	docker exec -it $(NAME) sh

login-db:
	docker exec -it $(NAME_DB) sh