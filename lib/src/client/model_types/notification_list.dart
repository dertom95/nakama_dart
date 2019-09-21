////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'notification.dart';

/**
 * List of notifications with cursor.
 */
// This message type is only used for GSON, and not exposed to the Client interface.
class NotificationList {
  final List<Notification> notifications;
  final String cacheableCursor;

  NotificationList(this.notifications, this.cacheableCursor);
}
