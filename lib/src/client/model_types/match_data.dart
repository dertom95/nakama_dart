import 'dart:convert';
import 'dart:typed_data';

////@Getter
////@EqualsAndHashCode
////@ToString
////@NoArgsConstructor(access = AccessLevel.PACKAGE)
import 'user_presence.dart';

/**
 * Some game state update in a match.
 */
class MatchData {
  /**
   * The unique match identifier.
   */
  final String matchId;

  /**
   * The operation code for the state change.
   * This value can be used to mark the type of the contents of the state.
   */
  final int opCode;

  /**
   * the base-64 contents of the state change.
   */
  final String data;

  /**
   * Information on the user who sent the state change.
   */
  final UserPresence userPresence;

  /**
   * Returns match data
   * ////@return match data
   */
  Uint8List getData() {
    if (this.data == null) {
      return null;
    }
    return base64Decode(this.data);
  }

  MatchData(this.matchId, this.opCode, this.data, this.userPresence);
}
