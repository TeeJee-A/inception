build:
	docker compose -f srcs/docker-compose.yml build
	./data.sh
up:
	docker compose -f srcs/docker-compose.yml up
	./data.sh
down:
	docker compose -f srcs/docker-compose.yml down
fclean:
	docker system prune -af
	rm -rf ../data/wp
	rm -rf ../data/mariadb