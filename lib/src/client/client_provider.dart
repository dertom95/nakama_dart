import 'dart:convert';

import 'package:grpc/grpc.dart';
import '../generated/proto/apigrpc.pbgrpc.dart';

import 'client.dart';

class NakamaClientProvider {
  String host;
  int port;
  String serverKey;

  NakamaClientProvider(String host, {this.port = 7349, this.serverKey = "defaultkey"});

  BasicNakamaClient client() {
    ClientChannel channel = new ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    NakamaClient client = new NakamaClient(
      channel,
      options: CallOptions(
        metadata: {"authorization": "Basic ${base64Encode(Utf8Encoder().convert("$serverKey:"))}"},
      ),
    );
    return BasicNakamaClient(client);
  }
}
