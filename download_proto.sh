#!/bin/bash

# Copyright 2020 The Nakama Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This command is a utility for downloading all .proto files required
# for making full source builds.

GRPC_GATEWAY_COMMIT=3c7c499cefb3fb46d0c662bcf296408a66fc5acc
NAKAMA_COMMON_COMMIT=ad78ab8588ae5f9c69776d0d92acc86b2cd55148
NAKAMA_COMMIT=2a04263250fee6c22ab5cb544677de57d75bd9bd
DOMAIN=https://raw.githubusercontent.com

#OPENAPI_URL=${DOMAIN}/grpc-ecosystem/grpc-gateway/${GRPC_GATEWAY_COMMIT}/protoc-gen-openapiv2/options/openapiv2.proto
#ANNOTATION_URL=${DOMAIN}/grpc-ecosystem/grpc-gateway/${GRPC_GATEWAY_COMMIT}/protoc-gen-openapiv2/options/annotations.proto
OPENAPI_URL=${DOMAIN}/grpc-ecosystem/grpc-gateway/${GRPC_GATEWAY_COMMIT}/protoc-gen-swagger/options/openapiv2.proto
ANNOTATION_URL=${DOMAIN}/grpc-ecosystem/grpc-gateway/${GRPC_GATEWAY_COMMIT}/protoc-gen-swagger/options/annotations.proto
API_URL=${DOMAIN}/heroiclabs/nakama-common/${NAKAMA_COMMON_COMMIT}/api/api.proto
REALTIME_URL=${DOMAIN}/heroiclabs/nakama-common/${NAKAMA_COMMON_COMMIT}/rtapi/realtime.proto
APIGRPC_URL=${DOMAIN}/heroiclabs/nakama/${NAKAMA_COMMIT}/apigrpc/apigrpc.proto
APIGRPC_SWAGGER_URL=${DOMAIN}/heroiclabs/nakama/${NAKAMA_COMMIT}/apigrpc/apigrpc.swagger.json
GOOGLE_API_ANNOTATION=${DOMAIN}/googleapis/googleapis/master/google/api/annotations.proto
GOOGLE_API_HTTP=${DOMAIN}/googleapis/googleapis/master/google/api/http.proto

ROOT_DIR=res/proto/2.14
NAKAMA_COMMON_DIR=github.com/heroiclabs/nakama-common/api
#SWAGGER_GEN_DIR=protoc-gen-openapiv2/options
SWAGGER_GEN_DIR=protoc-gen-swagger/options
GOOGLE_API=google/api

curl $OPENAPI_URL --create-dirs -o ${ROOT_DIR}/${SWAGGER_GEN_DIR}/openapiv2.proto
curl $ANNOTATION_URL --create-dirs -o ${ROOT_DIR}/${SWAGGER_GEN_DIR}/annotations.proto
curl $API_URL --create-dirs -o ${ROOT_DIR}/${NAKAMA_COMMON_DIR}/api.proto
curl $REALTIME_URL --create-dirs -o ${ROOT_DIR}/${NAKAMA_COMMON_DIR}/realtime.proto
curl $APIGRPC_URL --create-dirs -o ${ROOT_DIR}/apigrpc.proto
curl $APIGRPC_SWAGGER_URL --create-dirs -o ${ROOT_DIR}/apigrpc.swagger.json
curl $GOOGLE_API_ANNOTATION --create-dirs -o ${ROOT_DIR/}/${GOOGLE_API}/annotations.proto
curl $GOOGLE_API_HTTP --create-dirs -o ${ROOT_DIR/}/${GOOGLE_API}/http.proto