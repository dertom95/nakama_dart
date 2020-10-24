## 0.2.1
- Updated proto files to match nakama 2.14
  - (re)generate via 'make generate_proto'
  - (re)download via './download_proto.sh"
- Created generator to create user-layer(interface) on top of grpc-layer
  - (re)generate via 'make swagger-gen'
- Implemented BaseClient with JWT processing
- Manually implemented user-layer
  - only authenticate-methods have an onFail-callback, other calls need to be try catched
- Added SSL-Support (just add path to cer-file when creating Client)
  - create test-selfsigned-certificates (cert, privatekey and fingerprint(unneeded)) 'make cert' in test-certs-folder
  - start ssl-testserver: 'docker-compose -f docker-compose-ssl.yml up' (this mounts test-certs in the container and uses the corresponding cert-files)



## 0.1.1
- Initial version, created by Stagehand
