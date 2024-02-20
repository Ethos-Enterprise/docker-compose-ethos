local-env-create:
	(docker network inspect mynetwork >/dev/null 2>&1 || docker network create -d bridge --subnet=172.23.0.1/16 --gateway=172.23.0.1 mynetwork)
	docker login -u jefferson661 -p dckr_pat_KnO1-TvvrpyZTTGoVwo2GArNYWY
	docker-compose -f stack.yaml pull
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
	docker cp data/prestadora.sql postgres-prestadora:/var/lib/postgresql/data
	docker exec postgres-prestadora psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/prestadora.sql
	docker cp data/avaliacao.sql postgres-avaliacao:/var/lib/postgresql/data
	docker exec postgres-avaliacao psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/avaliacao.sql
    docker cp data/portfolio.sql postgres-portfolio:/var/lib/postgresql/data
	docker exec postgres-portfolio psql -h localhost -U admin -d postgres -a -f ./var/lib/postgresql/data/portfolio.sql
local-env-destroy:
	docker-compose -f stack.yaml down