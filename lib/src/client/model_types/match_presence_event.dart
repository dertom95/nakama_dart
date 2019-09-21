////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * A batch of join and leave presences for a match.
 */
class MatchPresenceEvent {
  /**
   * The unique match identifier.
   */
  final String matchId;

  /**
   * Presences of users who joined the match.
   */
  final List<UserPresence> joins;

  /**
   * Presences of users who left the match.
   */
  final List<UserPresence> leaves;

  MatchPresenceEvent(this.matchId, this.joins, this.leaves);
}
