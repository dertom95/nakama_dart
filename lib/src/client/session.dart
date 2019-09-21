/**
 * A session used with requests sent to Nakama server.
 */
abstract class Session {
  /**
   * @return The authentication token used to construct this session.
   */
  String authToken();

  /**
   * @return <c>True</c> if the user account for this session was just created.
   */
  bool isCreated();

  /**
   * @return The timestamp in seconds when this session object was created.
   */
  int createTime();

  /**
   * @return The timestamp in seconds when this session will expire.
   */
  int expireTime();

  /**
   * @return <c>True</c> if the session has expired against the current time.
   */
  bool isExpired();

  /**
   * @return The username of the user who owns this session.
   */
  String username();

  /**
   * @return The ID of the user who owns this session.
   */
  String userId();

  /**
   * Check if the session has expired against the input time.
   * @param dateTime The time to compare against the session.
   * @return <c>true</c> if the session has expired.
   */
  bool checkExpired(DateTime dateTime);
}
