////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)

import 'matchmaker_user.dart';

/**
 * The result of a successful matchmaker operation sent to the server.
 */
class MatchmakerMatched {
  /**
   * The id used to join the match.
   * A match ID used to join the match.
   */
  final String matchId;
  /**
   * The ticket sent by the server when the user requested to matchmake for other players.
   */
  final String ticket;
  /**
   * The token used to join a match.
   */
  final String token;
  /**
   * The other users matched with this user and the parameters they sent.
   */
  final List<MatchmakerUser> users;
  /**
   * The current user who matched with opponents.
   */
  final MatchmakerUser self;

  MatchmakerMatched(this.matchId, this.ticket, this.token, this.users, this.self);
}
