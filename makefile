## Shipping package
## Assumes user is on MacOS, if other OS, please change PROTO_ROOT_DIR to the path of protobuf installation

PROJECT_NAME = nakama-client
PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.9.1_1/include
PROJECT_PROTO_DIR = res/proto
PROJECT_PROTO = $(PROJECT_PROTO_DIR)/*.proto
PROJECT_PROTO_GEN_DIR = lib/src/generated/proto

## Dart requires you to manually ship all google provided proto files too.
_gendart:
	@echo Generate protobuf definitions: $(PROJECT_PROTO)
	@mkdir -p $(PROJECT_PROTO_GEN_DIR)
	@protoc -I=$(PROJECT_PROTO_DIR) -I=/usr/local/include  --dart_out=grpc:$(PROJECT_PROTO_GEN_DIR) $(PROJECT_PROTO)
	@protoc -I$(PROTO_ROOT_DIR) --dart_out=$(PROJECT_PROTO_GEN_DIR) $(PROTO_ROOT_DIR)/google/protobuf/*.proto

gen: _gendart
