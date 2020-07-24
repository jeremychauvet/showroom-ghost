.PHONY: start
.DEFAULT: start

start:
	docker-compose up -d
	docker-compose logs -ft