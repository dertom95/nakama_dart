import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/client/baseclient.dart';
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

    parseJWTPayload(token);
  }

  void parseJWTPayload(String token) {
    var payload = token.split('.')[1];
    var padLength = (payload.length / 4.0).ceil() * 4;
    payload = payload
        .padRight(padLength, '=')
        .replaceAll('-', '+')
        .replaceAll('_', '/');

    var data = json.decode(String.fromCharCodes(base64Decode(payload)));
    expireTime = data["exp"] * 1000;
    userId = data["uid"];
    userName = data["usn"];
  }

  DateTime getExpireDate() {
    return DateTime.fromMillisecondsSinceEpoch(expireTime, isUtc: true);
  }

  bool isExpired() {
    return timeLeftMs() < 0;
  }

  int timeLeftMs() {
    int now = DateTime.now().toUtc().millisecondsSinceEpoch;
    return expireTime - now;
  }

  int timeLeftSecs() {
    return timeLeftMs() ~/ 1000;
  }

  String toString() {
    var secsLeft = timeLeftSecs();
    return "NakamaSession: uid:${userId} usn:${userName} expiration:${secsLeft}secs\ntoken:${token}";
  }
}
