import 'dart:io';
import 'dart:mirrors';

import 'package:nakama_client/src/client/NakamaSession.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';
import "package:test/test.dart";
import '../lib/src/client/DefaultClient.dart';

void main() {
  group("DefaultClient", () {
    test("basic test", () async {
      bool use_ssl = true;

      // create client
      var client = DefaultClient(
          nakama_host:
              "127.0.0.1", // if using ssl, make sure this host matches the one in your CN-Field when creating the Certifictate (see makefile)
//             "192.168.178.90", // if using ssl, make sure this host matches the one in your CN-Field when creating the Certifictate (see makefile)
          nakama_port: 7349,
          serverKey: "defaultkey",
          caCertFile: use_ssl ? "certs/nakamassl_cert.pem" : null,
          badCertificateHandler: (cert, host) {
            return false;
            // don't use following in production! (in prod just don't set the handler)
            // return true; // accept bad certificate. e.g. you signed with your domain's cert but run on localhost....
          });
      try {
        await client.connect();
        NakamaSession session = await client.authenticateCustom(
          id: "nakama-01",
          create: true,
        );

        print("Session:" + session.toString());

        int timeLeft = session.timeLeftSecs();
        print("timeLeft is secs:$timeLeft");
        Account account = await client.getAccount(session);
        print(account);

        await client.linkEmail(session,
            email: "tomtom@tomtom.com", password: "abcdefghijk");

        account = await client.getAccount(session);
        print(account);

        var result = await client.listLeaderboardRecords(
          session,
          leaderboardId: "level1",
        );

        for (var rec in result.records) {
          print("Record: ${rec.username.value} : ${rec.score}");
        }
        print(
            "account-name: ${account.user.username} displayname:${account.user.displayName}");
        var record = await client.writeLeaderboardRecord(session,
            leaderboardId: "level1", score: 1895);
        print("record: ${record.score}");
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
