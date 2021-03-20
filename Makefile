.PHONY: start stop reset logs validate
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

logs:
	docker-compose logs -ft

validate:
	pre-commit run --all-files
