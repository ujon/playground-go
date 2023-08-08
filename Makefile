start-infra:
	docker compose -p playground-go-infra -f ./docker/local-infra.yml down
	docker compose -p playground-go-infra -f ./docker/local-infra.yml up -d

stop-infra:
	docker compose -p playground-go-infra -f ./docker/local-infra.yml down

create-db:
	docker compose exec -it playground-go-infra-pg createdb