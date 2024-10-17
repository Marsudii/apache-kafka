generate-random-uuid:
	./bin/kafka-storage.sh random-uuid

format-storage-kafka:
	./bin/kafka-storage.sh format --cluster-id Emsnp94oTleHHX7tsW1ejg --config config/kraft/server.properties

run-kafka-server:
	./bin/kafka-server-start.sh config/kraft/server.properties
