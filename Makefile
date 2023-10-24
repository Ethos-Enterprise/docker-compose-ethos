local-env-create:
	docker-compose -f stack.yaml up -d
	sleep 3
	docker cp data/user.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/user.sql
	docker cp data/empresa.sql postgres-empresa:/var/lib/postgresql/data
	docker exec postgres-empresa psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/empresa.sql

local-env-destroy:
	docker-compose -f stack.yaml down