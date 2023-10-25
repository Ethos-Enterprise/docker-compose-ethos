local-env-create:
	docker-compose -f stack.yaml up -d
	sleep 3
	docker cp data/user.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/user.sql
	docker cp data/empresa.sql postgres-empresa:/var/lib/postgresql/data
	docker exec postgres-empresa psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/empresa.sql
	docker cp data/newsletter.sql postgres-newsletter:/var/lib/postgresql/data
	docker exec postgres-newsletter psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/newsletter.sql
	docker cp data/servico.sql postgres-servico:/var/lib/postgresql/data
	docker exec postgres-servico psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/servico.sql

local-env-destroy:
	docker-compose -f stack.yaml down