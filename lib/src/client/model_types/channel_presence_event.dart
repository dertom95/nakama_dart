////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * A batch of join and leave presences on a chat channel.
 */
class ChannelPresenceEvent {
  /**
   * The unique identifier of the chat channel.
   */
  final String channelId;

  /**
   * The unique identifier of the chat channel.
   */
  final List<UserPresence> joins;

  /**
   * Presences of users who left the channel.
   */
  final List<UserPresence> leaves;

  ChannelPresenceEvent(this.channelId, this.joins, this.leaves);
}
