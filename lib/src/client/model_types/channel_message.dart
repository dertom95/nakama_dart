////@Data
/**
 * A message sent on a channel.
 *
 */
// This message type is only used for GSON, and not exposed to the Client interface.
class ChannelMessage {
  final String channelId;
  final String messageId;
  final int code;
  final String senderId;
  final String username;
  final String content;
  final DateTime createTime;
  final DateTime updateTime;
  final bool persistent;

  ChannelMessage(this.channelId, this.messageId, this.code, this.senderId, this.username,
      this.content, this.createTime, this.updateTime, this.persistent);
}
