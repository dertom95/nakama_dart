////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * A status update event about other users who've come online or gone offline.
 */
class StatusPresenceEvent {
  /**
   * Presences of users who joined the server.
   *This join information is in response to a subscription made to be notified when a user comes online.
   */
  final List<UserPresence> joins;

  /**
   * Presences of users who left the server.
   * This leave information is in response to a subscription made to be notified when a user goes offline.
   */
  final List<UserPresence> leaves;

  StatusPresenceEvent(this.joins, this.leaves);
}
