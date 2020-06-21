build:
	docker-compose -f ./proxy/docker-compose.yml build
	docker-compose -f docker-compose.yml build
up:
	docker-compose -f ./proxy/docker-compose.yml up -d
	docker-compose -f docker-compose.yml up -d
down:
	docker-compose -f docker-compose.yml down
	docker-compose -f ./proxy/docker-compose.yml down
destroy:
	docker-compose -f docker-compose.yml down -v
	docker-compose -f ./proxy/docker-compose.yml down -v
start:
	docker-compose -f ./proxy/docker-compose.yml start
	docker-compose -f docker-compose.yml start
stop:
	docker-compose -f docker-compose.yml stop
	docker-compose -f ./proxy/docker-compose.yml stop
restart:
	docker-compose -f docker-compose.yml stop
	docker-compose -f ./proxy/docker-compose.yml stop
	docker-compose -f ./proxy/docker-compose.yml start
	docker-compose -f docker-compose.yml start
ps:
	docker-compose -f ./proxy/docker-compose.yml ps
	docker-compose -f docker-compose.yml ps