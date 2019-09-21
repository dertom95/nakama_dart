////@Data
/**
 * Unfollow one or more other users for status updates.
 */
class StatusUnfollowMessage {
  final List<String> userIds;

  StatusUnfollowMessage(this.userIds);
}
