////@Data
/**
 * RPC message.
 */
// This message type is only used for GSON, and not exposed to the Client interface.
class RpcMessage {
  final String id;
  final String payload;

  RpcMessage(this.id, this.payload);
}
