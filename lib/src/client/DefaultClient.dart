import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/api.pb.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';

class DefaultClient extends BaseClient {
  BoolValue boolTrue = BoolValue()..value = true;
  BoolValue boolFalse = BoolValue()..value = false;
  BoolValue getBool(bool b) => b ? boolTrue : boolFalse;
  Int32Value getInt32(int i) {
    var val = Int32Value()..value = i;
    val.value = i;
    return val;
  }

  DefaultClient({String nakama_host, int nakama_port, String serverKey})
      : super(
            nakama_host: nakama_host,
            nakama_port: nakama_port,
            serverKey: serverKey);

  /// A healthcheck which load balancers can use to check the service.
  ResponseFuture<void> healthcheck() {
    return client.healthcheck(Empty());
  }

  /// Fetch the current user's account.
  ResponseFuture<Account> getAccount() {
    return client.getAccount(Empty());
  }

  /// Authenticate a user with a custom id against the server.
  /// [id]:
  /// [create]: Register the account if the user does not already exist.
  ResponseFuture<Session> authenticateCustom(
      {@required String id, bool create = false, String username = null}) {
    return client.authenticateCustom(
        AuthenticateCustomRequest()
          ..account = (AccountCustom()..id = id)
          ..create_2 = getBool(create)
          ..username = username,
        options: calloptBasicAuth);
  }

  ResponseFuture<ChannelMessageList> listChannelMessages({
    @required String channel_id,
    int limit,
    bool forward,
    String cursor,
  }) {
    return client.listChannelMessages(
        ListChannelMessagesRequest()
          ..channelId = channel_id
          ..limit = getInt32(limit)
          ..forward = getBool(forward),
        options: calloptJWT);
  }
}
