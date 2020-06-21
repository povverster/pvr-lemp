APP_PATH = public_html/
PROXY_COMPOSE_FILE = ./proxy/docker-compose.yml
APP_COMPOSE_FILE = docker-compose.yml

build:
	docker-compose -f $(PROXY_COMPOSE_FILE) build
	docker-compose -f $(APP_COMPOSE_FILE) build
	chmod -R ugo+rw $(APP_PATH)
up:
	docker-compose -f $(PROXY_COMPOSE_FILE) up -d
	docker-compose -f $(APP_COMPOSE_FILE) up -d
	chmod -R ugo+rw $(APP_PATH)
down:
	docker-compose -f $(APP_COMPOSE_FILE) down
	docker-compose -f $(PROXY_COMPOSE_FILE) down
destroy:
	docker-compose -f $(APP_COMPOSE_FILE) down -v
	docker-compose -f $(PROXY_COMPOSE_FILE) down -v
start:
	docker-compose -f $(PROXY_COMPOSE_FILE) start
	docker-compose -f $(APP_COMPOSE_FILE) start
	chmod -R ugo+rw $(APP_PATH)
stop:
	docker-compose -f $(APP_COMPOSE_FILE) stop
	docker-compose -f $(PROXY_COMPOSE_FILE) stop
restart:
	docker-compose -f $(APP_COMPOSE_FILE) stop
	docker-compose -f $(PROXY_COMPOSE_FILE) stop
	docker-compose -f $(PROXY_COMPOSE_FILE) start
	docker-compose -f $(APP_COMPOSE_FILE) start
	chmod -R ugo+rw $(APP_PATH)
reboot:
	docker-compose -f $(APP_COMPOSE_FILE) down -v
	docker-compose -f $(PROXY_COMPOSE_FILE) down -v
	docker-compose -f $(PROXY_COMPOSE_FILE) up -d
	docker-compose -f $(APP_COMPOSE_FILE) up -d
	chmod -R ugo+rw $(APP_PATH)
ps:
	docker-compose -f $(PROXY_COMPOSE_FILE) ps
	docker-compose -f $(APP_COMPOSE_FILE) ps