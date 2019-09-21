////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * A multiplayer match.
 */
class Match {
  /**
   * True if this match has an authoritative handler on the server.
   */
  final bool authoritative;
  /**
   * The unique match identifier.
   */
  final String matchId;
  /**
   * A label for the match which can be filtered on.
   */
  final String label;
  /**
   * The presences already in the match.
   */
  final List<UserPresence> presences;
  /**
   * The number of users currently in the match.
   */
  final int size;
  /**
   * The current user in this match. i.e. Yourself.
   */
  final UserPresence self;

  Match(this.authoritative, this.matchId, this.label, this.presences, this.size, this.self);
}
