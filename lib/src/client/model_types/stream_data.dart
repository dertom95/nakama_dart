////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)

import 'user_presence.dart';

/**
 * A state change received from a stream.
 */
class StreamData {
  /**
   * The user who sent the state change. May be <c>null</c>.
   */
  final UserPresence sender;

  /**
   * The contents of the state change.
   */
  final String data;

  /**
   * The identifier for the stream.
   */
  final Stream stream;

  StreamData(this.sender, this.data, this.stream);
}
