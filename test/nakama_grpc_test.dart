import 'dart:mirrors';

import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';
import "package:test/test.dart";
import '../lib/src/client/DefaultClient.dart';

void main() {
  group("DefaultClient", () {
    test("connect", () async {
      var client = DefaultClient(
        nakama_host: "127.0.0.1",
        nakama_port: 7349,
        serverKey: "defaultkey",
      );
      try {
        await client.connect();
        NakamaSession session =
            await client.authenticateCustom("moxi123456", create: true);
        print("ok:" + session.session.token);
        Account account = await client.getAccount(session);
        print(
            "account-name: ${account.user.username} displayname:${account.user.displayName}");
        await client.listChannelMessages(session, "aa");
        print(
            "account-name: ${account.user.username} displayname:${account.user.displayName}");
      } catch (e) {
        print(e);
      }
    });

    test("Analyze", () async {
      var result = [];
      final ms = currentMirrorSystem();
    });
  });
}

// void __main() {
//   // todo tests here
//   group("", () {
//     test("Test grpc connection", () async {
//       // todo test code here
//       String nakamaHost = "127.0.0.1";
//       int nakamaPort = 7349;
//       String defaultServerKey = "defaultkey:";
//       ClientChannel channel = new ClientChannel(
//         nakamaHost,
//         port: nakamaPort,
//         options: ChannelOptions(
//           credentials: ChannelCredentials.insecure(),
//         ),
//       );
//       NakamaClient client = new NakamaClient(channel,
//           options: CallOptions(
//             metadata: {
//               "authorization":
//                   "Basic ${base64Encode(Utf8Encoder().convert(defaultServerKey))}"
//             },
//           ));
//       await client.healthcheck(Empty());

//       var request = AuthenticateEmailRequest();
//       request.account = AccountEmail();
//       request.account.email = "tom@tom.com";
//       request.account.password = "aabbccddeeff";

//       try {
//         Session session = await client.authenticateEmail(request);
//         print("TOKEN:" + session.token);

//         var account = await client.getAccount(Empty(),
//             options: CallOptions(
//               metadata: {
//                 "authorization": "Bearer ${session.token}",
//               },
//             ));
//         print("ACCOUNT:" + account.email);
//       } catch (e) {
//         print("err:" + e);
//       }
//     });
//   });
//}
