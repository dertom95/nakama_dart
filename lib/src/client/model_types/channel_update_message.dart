////@Data
/**
 * Update a chat message which has been sent to a channel.
 */
class ChannelUpdateMessage {
  final String channelId;
  final String messageId;
  final String content;

  ChannelUpdateMessage(this.channelId, this.messageId, this.content);
}
