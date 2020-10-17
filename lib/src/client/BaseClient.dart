import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/client/session.dart';
import 'package:nakama_client/src/generated/proto/apigrpc.pbgrpc.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';

class BaseClient {
  String nakama_host = "127.0.0.1";
  int nakama_port = 7349;
  String serverKey = "defaultkey";
  CallOptions calloptBasicAuth;
  CallOptions calloptJWT;

  NakamaClient _client;
  NakamaClient get client => _client;

  Session _session = null; // todo: protected?
  /// is a session registered?
  bool hasSession() => _session != null;
  Session get session => _session;

  /// after authentication set the session
  void setSession(Session session) {
    this._session = session;
    calloptJWT = CallOptions(
        metadata: {"authorization": "Bearer ${session.authToken()}"});
  }

  ClientChannel _channel;

  BaseClient({this.nakama_host, this.nakama_port, this.serverKey}) {
    calloptBasicAuth = CallOptions(metadata: {
      "authorization":
          "Basic ${base64Encode(Utf8Encoder().convert("$serverKey:"))}"
    });
  }

  void connect() async {
    _channel = new ClientChannel(
      nakama_host,
      port: nakama_port,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    _client = new NakamaClient(
      _channel,
      options: calloptBasicAuth,
    );
    try {
      await client.healthcheck(Empty());
    } catch (e) {
      print(e);
    }
  }
}
