import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/generated/proto/api.pb.dart';
import 'package:nakama_client/src/generated/proto/apigrpc.pbgrpc.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pb.dart';

import "package:test/test.dart";

void main() {
  // todo tests here
  group("", () {
    test("Test grpc connection", () async {
      // todo test code here
      String nakamaHost = "127.0.0.1";
      int nakamaPort = 7349;
      String defaultServerKey = "defaultkey:";
      ClientChannel channel = new ClientChannel(
        nakamaHost,
        port: nakamaPort,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      NakamaClient client = new NakamaClient(channel,
          options: CallOptions(
            metadata: {
              "authorization":
                  "Basic ${base64Encode(Utf8Encoder().convert(defaultServerKey))}"
            },
          ));
      await client.healthcheck(Empty());

      var request = AuthenticateEmailRequest();
      request.account = AccountEmail();
      request.account.email = "tom@tom.com";
      request.account.password = "aabbccddeeff";

      try {
        Session session = await client.authenticateEmail(request);
        print("TOKEN:" + session.token);

        var account = await client.getAccount(Empty(),
            options: CallOptions(
              metadata: {
                "authorization": "Bearer ${session.token}",
              },
            ));
        print("ACCOUNT:" + account.email);
      } catch (e) {
        print("err:" + e);
      }
    });
  });
}
