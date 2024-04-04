deploy:
	docker-compose -f docker-compose.yaml up -d

shutdown:
	docker-compose -f docker-compose.yaml down -v

restart: shutdown deploy

status:
	docker exec -it scylla-client nodetool status

make cqlsh:
	docker exec -it scylla-client cqlsh
