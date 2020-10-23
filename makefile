## Shipping package
## Assumes user is on MacOS, if other OS, please change PROTO_ROOT_DIR to the path of protobuf installation

PROJECT_NAME = nakama-client
#MACOS: PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.9.1_1/include
PROTO_ROOT_DIR = /usr/include
PROJECT_PROTO_DIR = res/proto/2.14
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
	go run codegen/main.go res/apigrpc.swagger.json lib/src/generated/BaseClientInterface.gen.dart


gen: generate_proto

test-gen:
	@mkdir -p temp/dart temp/java
	@protoc --dart_out=temp/dart --java_out=temp/java temp/*.proto
