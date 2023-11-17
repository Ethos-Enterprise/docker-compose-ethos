local-env-create:
	(docker network inspect mynetwork >/dev/null 2>&1 || docker network create -d bridge --subnet=172.23.0.1/16 --gateway=172.23.0.1 mynetwork)
	docker-compose -f stack.yaml up -d
	sleep 3

local-env-destroy:
	docker-compose -f stack.yaml down
