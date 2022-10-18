up:
	docker run -v ${PWD}/mongo/migrations:/migrations --network=hello-golang-migrate_network migrate/migrate -path=/migrations/ -database "mongodb://testuser:password@mongo:27017/hoge?authSource=admin" up
down:
	docker run -v ${PWD}/mongo/migrations:/migrations --network=hello-golang-migrate_network migrate/migrate -path=/migrations/ -database "mongodb://testuser:password@mongo:27017/hoge?authSource=admin" down -all
