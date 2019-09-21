/**
 * The available channel types on the server.
 */
enum ChannelType {
  /**
   * A chat room which can be created dynamically with a name.
   */
  ROOM, // 0

/**
 * A chat between two users.
 */
  DIRECT_MESSAGE, // 1

/**
 * A chat within a group on the server.
 */
  GROUP // 2
}
