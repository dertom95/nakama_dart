////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * A chat channel on the server.
 */
class Channel {
  /**
   * The server-assigned channel ID.
   */
  final String id;
  /**
   * The presences visible on the chat channel.
   */
  final List<UserPresence> presences;
  /**
   * The presence of the current user. i.e. Your self.
   */
  final UserPresence self;

  Channel(this.id, this.presences, this.self);
}
