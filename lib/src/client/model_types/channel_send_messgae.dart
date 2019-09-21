////@Data
/**
 * Send a chat message to a channel on the server.
 */
class ChannelSendMessage {
  final String channelId;
  final String content;

  ChannelSendMessage(this.channelId, this.content);
}
