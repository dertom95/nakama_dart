## Shipping package
## Assumes user is on MacOS, if other OS, please change PROTO_ROOT_DIR to the path of protobuf installation

NAKAMA_VERSION = 2.14

SERVER_HOST = 127.0.0.1

PROJECT_NAME = nakama-client
#MACOS: PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.9.1_1/include
PROTO_ROOT_DIR = /usr/include
PROJECT_PROTO_DIR = res/proto/${NAKAMA_VERSION}
PROJECT_PROTO_GEN_DIR = lib/src/generated/proto

## Dart requires you to manually ship all google provided proto files too.
generate_proto:
	@echo Generate protobuf definitions: $(PROJECT_PROTO)
	@mkdir -p $(PROJECT_PROTO_GEN_DIR)
	@protoc -I=$(PROJECT_PROTO_DIR) -I=/usr/include  --dart_out=grpc:$(PROJECT_PROTO_GEN_DIR) $(PROJECT_PROTO_DIR)/apigrpc.proto
	@protoc -I=$(PROJECT_PROTO_DIR) -I=/usr/include  --dart_out=grpc:$(PROJECT_PROTO_GEN_DIR) $(PROJECT_PROTO_DIR)/github.com/heroiclabs/nakama-common/api/api.proto
	@protoc -I=$(PROTO_ROOT_DIR) --dart_out=$(PROJECT_PROTO_GEN_DIR) $(PROTO_ROOT_DIR)/google/protobuf/*.proto
	@protoc -I=$(PROJECT_PROTO_DIR) -I=/usr/include  --dart_out=grpc:$(PROJECT_PROTO_GEN_DIR) $(PROJECT_PROTO_DIR)/google/api/*.proto
	
#	@protoc --dart_out=$(PROJECT_PROTO_GEN_DIR) $(PROTO_ROOT_DIR)/google/protobuf/*.proto

swagger-gen: 
	go run codegen/main.go res/proto/${NAKAMA_VERSION}/apigrpc.swagger.json lib/src/generated/baseclient_interface.gen.dart


gen: generate_proto swagger-gen

cert-clean:
	@rm -Rf test-certs

cert: cert-clean cert-only ssl-fingerprint

cert-only:
	@mkdir -p test-certs
	@openssl req -x509 -newkey rsa:2048 -keyout test-certs/nakamassl_key.pem -out test-certs/nakamassl_cert.pem -days 3650 -nodes -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=${SERVER_HOST}"

ssl-fingerprint:
	@openssl x509 -fingerprint -noout -inform pem -in test-certs/nakamassl_cert.pem > test-certs/nakamassl.fingerprint

start-nakama:
	@docker-compose up

start-nakama-ssl:
	@docker-compose -f docker-compose-ssl.yml up