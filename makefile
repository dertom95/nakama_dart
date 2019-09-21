## Shipping package
## Assumes user is on MacOS, if other OS, please change PROTO_ROOT_DIR to the path of protobuf installation
PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.9.1_1/include
GOPATH = /Users/sensa/go
PROJECT_NAME = nakama_client
NAKAMA_API_PROTO = $(GOPATH)/src/github.com/heroiclabs/nakama-common/api/api.proto

## Dart requires you to manually ship all google provided proto files too.
_gendart:
	@mkdir -p gen/proto

	@protoc -I$(NAKAMA_API_PROTO) -I/usr/local/include  --dart_out=grpc:gen/proto $(NAKAMA_API_PROTO)
    ##@protoc -I/usr/local/include -I$(GOPATH)/src/github.com/heroiclabs/nakama-common/api --dart_out=grpc:gen/proto $(GOPATH)/src/github.com/heroiclabs/nakama/apigrpc/apigrpc.proto

gen: _gendart

get:
	@go get -u github.com/golang/dep/cmd/dep
	@dep ensure

install: get gen
	@cp config_template.json config.json