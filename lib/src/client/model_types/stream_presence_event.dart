////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * A batch of joins and leaves on the low level stream.
 * Streams are built on to provide abstractions for matches, chat channels, etc. In most cases you'll never need to
 * interact with the low level stream itself.
 */
class StreamPresenceEvent {
  /**
   * Presences of users who joined the stream.
   */
  final List<UserPresence> leaves;

  /**
   * Presences of users who left the stream.
   */
  final List<UserPresence> joins;

  /**
   * The identifier for the stream.
   */
  final Stream stream;

  StreamPresenceEvent(this.leaves, this.joins, this.stream);
}
