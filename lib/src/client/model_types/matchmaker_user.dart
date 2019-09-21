//@Getter
//@EqualsAndHashCode
//@ToString
//@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * The user with the parameters they sent to the server when asking for opponents.
 */
class MatchmakerUser {
  /**
   * The numeric properties which this user asked to matchmake with.
   */
  final Map<String, double> numericProperties;
  /**
   * The presence of the user.
   */
  final UserPresence presence;
  /**
   * The string properties which this user asked to matchmake with.
   */
  final Map<String, String> stringProperties;

  MatchmakerUser(this.numericProperties, this.presence, this.stringProperties);
}
