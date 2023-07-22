start:
	docker compose -f scripts/mongo/docker-compose.yml up -d
	docker exec -it mongodb-cluster-1 mongosh --eval "rs.initiate({_id:\"mongodb-cluster\",members:[{_id:0,host:\"mongodb-cluster-1:27017\"},{_id:1,host:\"mongodb-cluster-2:27017\"},{_id:2,host:\"mongodb-cluster-3:27017\"}]})"

down:
	docker compose -f scripts/mongo/docker-compose.yml down
	# rm -rf ./data

# Path: scripts/kafka
start-kafka:
	docker compose -f scripts/kafka/docker-compose.yml up -d
down-kafka:
	docker compose -f scripts/kafka/docker-compose.yml down