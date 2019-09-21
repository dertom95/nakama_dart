////@Data
/**
 * Send a channel join message to the server.
 */
class ChannelJoinMessage {
  final String target;
  final int type;
  final bool hidden;
  final bool persistence;

  ChannelJoinMessage(this.target, this.type, this.hidden, this.persistence);
}
