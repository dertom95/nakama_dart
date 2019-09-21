////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
/**
 * An acknowledgement from the server when a chat message is delivered to a channel.
 */
class ChannelMessageAck {
  /**
   * A unique ID for the chat message.
   */
  final String messageId;

  /**
   * The server-assigned channel ID.
   */
  final String channelId;

  /**
   * A user-defined code for the chat message.
   */
  final int code;

  /**
   * The username of the sender of the message.
   */
  final String username;

  /**
   * True if the chat message has been stored in history.
   */
  final bool persistent;

  /**
   * The UNIX time when the message was created.
   */
  final DateTime createTime;

  /**
   * The UNIX time when the message was updated.
   */
  final DateTime updateTime;

  ChannelMessageAck(this.messageId, this.channelId, this.code, this.username, this.persistent,
      this.createTime, this.updateTime);
}
