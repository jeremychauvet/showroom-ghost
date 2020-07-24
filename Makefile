.PHONY: start stop reset
.DEFAULT: start

start:
	docker-compose up -d
	docker-compose logs -ft

stop:
	docker-compose down

reset:
	docker-compose down
	rm -fr ./data
	make start	
