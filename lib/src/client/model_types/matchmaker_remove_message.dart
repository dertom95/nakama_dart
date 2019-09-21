////@Data
/**
 * Remove the user from the matchmaker pool by ticket.
 */
class MatchmakerRemoveMessage {
  final String ticket;

  MatchmakerRemoveMessage(this.ticket);
}
