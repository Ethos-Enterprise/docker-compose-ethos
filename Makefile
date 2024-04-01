local-env-create:
	(docker network inspect mynetwork >/dev/null 2>&1 || docker network create -d bridge --subnet=172.23.0.1/16 --gateway=172.23.0.1 mynetwork)
	docker login -u jefferson661 -p dckr_pat_KnO1-TvvrpyZTTGoVwo2GArNYWY
	docker-compose -f stack.yaml pull
	docker-compose -f stack.yaml up -d
	sleep 3
	docker cp data/user.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/user.sql
	docker cp data/empresa.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/empresa.sql
	docker cp data/newsletter.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/newsletter.sql
	docker cp data/servico.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/servico.sql
	docker cp data/prestadora.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/prestadora.sql
	docker cp data/avaliacao.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/avaliacao.sql
	docker cp data/portfolio.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/portfolio.sql
	docker cp data/pergunta.sql postgressql:/var/lib/postgressql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/pergunta.sql
	docker cp data/meta.sql postgressql:/var/lib/postgressql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/meta.sql
	docker cp data/interacao.sql postgressql:/var/lib/postgressql/data
	docker exec postgressql psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/interacao.sql

local-env-destroy:
	docker-compose -f stack.yaml down