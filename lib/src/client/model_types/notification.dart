////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
/**
 * A notification object.
 */
// This message type is only used for GSON, and not exposed to the Client interface.
class Notification {
  final String id;
  final String subject;
  final String content;
  final int code;
  final String senderId;
  final DateTime createTime;
  final bool persistent;

  Notification(this.id, this.subject, this.content, this.code, this.senderId, this.createTime,
      this.persistent);
}
