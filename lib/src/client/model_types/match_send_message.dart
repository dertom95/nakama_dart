////@Data
import 'dart:typed_data';

import 'user_presence.dart';

/**
 * Send new state to a match on the server.
 */
class MatchSendMessage {
  final String matchId;
  final int opCode;
  final Uint8List data;
  final List<UserPresence> presences;

  MatchSendMessage(this.matchId, this.opCode, this.data, this.presences);
}
