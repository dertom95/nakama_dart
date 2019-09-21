////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * Receive status updates for users.
 */
class Status {
  /**
   * The status events for the users followed.
   */
  final List<UserPresence> presences;

  Status(this.presences);
}
