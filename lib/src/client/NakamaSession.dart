import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';

class NakamaSession {
  NakamaSession(Session session, this.client) {
    token = session.token;
    created = session.created;
    updateSession();
  }
  NakamaSession.restore(this.token) {
    created = false;
    updateSession();
  }

  CallOptions calloptJWT;

  BaseClient client;
  bool created;
  String token;
  int expireTime;
  String userName;
  String userId;
  Map<String, String> meta = {};

  /// after authentication set the session
  void updateSession() {
    calloptJWT = CallOptions(metadata: {"authorization": "Bearer ${token}"});

    ParseJWTPayload(token);
  }

  void ParseJWTPayload(String token) {
    var payload = token.split('.')[1];
    var padLength = (payload.length / 4.0).ceil() * 4;
    payload = payload
        .padRight(padLength, '=')
        .replaceAll('-', '+')
        .replaceAll('_', '/');

    var data = json.decode(String.fromCharCodes(base64Decode(payload)));
    expireTime = data["exp"];
    userId = data["uid"];
    userName = data["usn"];
  }

  bool HasExpired(DateTime offset) {
    var expireDateTime = DateTime.fromMillisecondsSinceEpoch(expireTime * 1000);

    return offset.isBefore(expireDateTime);
  }

  DateTime GetExpireDate() {
    return DateTime.fromMillisecondsSinceEpoch(expireTime * 1000);
  }

  bool isExpired() {
    return HasExpired(DateTime.now());
  }
}
