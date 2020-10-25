Nakama-Client for Dart

**DISCLAIMER:**  
**This is not an official nakama-client! It is 'work in progress' and eventually not(!) production-ready! Use at own risk**

Only the default functionality is implemented (WIP),yet. (No realtime/Streams/...)

The grpc-transport-layer (default-port:7349) is used. As of now(2020-10-25) compatible to nakama 2.14


## Install

In pubspec.yaml

```
dependencies:
  ...
  nakama_client:
    git:
      url: https://github.com/dertom95/nakama_dart
      ref: master 
  ...
```


## Usage




A simple usage example:

```dart
import 'package:grpc/grpc.dart';
import 'package:nakama_client/nakama_client.dart';

void nakama_test() async {
  // init client and connect
  var client = new DefaultClient(
      nakama_host: '127.0.0.1', nakama_port: 7349, serverKey: "defaultkey");
  client.connect();

  var session = await client.authenticateEmail(
    email: "abc@test.com",
    password: "aabbccddeeff",
    create: true,
    onFail: (e) {
      print(e); // if something went wrong on authentication
    },
  );

  // retrieve account from server
  var account = await client.getAccount(session);
  print("${account.user.username} | ${account.user.displayName}");

  // submit score to leaderboard with id 'level1'
  // (for this to work you need a leaderboard with that name created
  // see: https://heroiclabs.com/docs/gameplay-leaderboards/#create-a-leaderboard
  try {
    await client.writeLeaderboardRecord(session,
        leaderboardId: "level1", score: 1895);
    var result =
        await client.listLeaderboardRecords(session, leaderboardId: "level1");

    for (var rec in result.records) {
      print("Record: ${rec.username.value} : ${rec.score}");
    }
  } on GrpcError catch (e) {
    // catch errors. e.g. "Leaderboard not found"
    print(e);
  }
}
```

## SSL-Support

To use SSL you need to specifiy the path to the certificate when creating the DefaultClient:
```dart
  var client = DefaultClient(
      nakama_host:
          "127.0.0.1", // if using ssl, make sure this host matches the one in your CN-Field when creating the Certifictate (see makefile)
      nakama_port: 7349,
      serverKey: "defaultkey",
      caCertFile: "test-certs/nakamassl_cert.pem",
      badCertificateHandler: (cert, host) {
        // override a missmatch with the certificate.
        // don't use following in production! (in prod just don't set the handler)
        // return true; // accept bad certificate. e.g. you signed with your domain's cert but run on localhost....        
        return false;
      });
```

## Starting default server:

To start default nakama-server(you need 'make'-tool to be installed):
```
make start-nakama
```
with SSL (using test-certs in folder:'test-cert')
```
make start-nakama-ssl
```

To regenerate the certificate:
```
make cert
```

## Strange grpc-related errors?

Make sure you did **not** import 'package:grpc/grpc_web.dart'. We need to import:
```
import 'package:grpc/grpc.dart';
```



## Contributing - Development of the client:

For a new/other nakama-version, modify 'download_proto.sh' to match the corresponding git-hashes. And download:
```
./download_proto.sh
```

There are two generation-steps:
1) generate protobuf:
```
make generate_proto
```
This will generate the corresponding stubs and grpc-code

2) generate client-layer on top of grpc:

(You need golang for this to be installed...)

```
make swagger-gen
```

To generate 'baseclient_interface.gen.dart' which is an interface for the client-layer that will sit between the grpc-layer and the user. 

You can also combine both calls:
```
make gen
```

Now the manual part (didn't find a good solution for generation in this case):  
* Go to default_client and see if you need to implement new functions or remove old ones.
* Cautious: The authenticate...-calls have an additional onFail named-parameters that is not present in the interface (but dart seems not to care ;) .

I want to underline a last time, this I am just a developer who want to use nakama in dart. I do not intend to be super ambitious about this project but I would love if others would contribute.

TODO:
* realtime-layer  
* get rid of usage of try/catch...this should be generated...  
...


## bugs

Please report bugs at the [issue tracker][tracker].

[tracker]: https://github.com/dertom95/nakama_dart/issues
