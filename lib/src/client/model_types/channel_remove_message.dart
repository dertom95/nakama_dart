////@Data
/**
 * A remove message for a chat channel.
 */
class ChannelRemoveMessage {
  final String channelId;
  final String messageId;

  ChannelRemoveMessage(this.channelId, this.messageId);
}
