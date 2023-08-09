start-infra:
	docker compose -p playground-go-infra -f ./docker/local-infra.yml down
	docker compose -p playground-go-infra -f ./docker/local-infra.yml up -d

stop-infra:
	docker compose -p playground-go-infra -f ./docker/local-infra.yml down

inject-schema:
	docker cp db/schema playground-go-infra-pg:schema/
	docker exec -it playground-go-infra-pg psql -U root -d playground -f schema/go/test.sql