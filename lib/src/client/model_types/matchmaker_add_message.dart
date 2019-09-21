////@Data
/**
 * Add the user to the matchmaker pool with properties.
 */
class MatchmakerAddMessage {
  final int MinCount;
  final int MaxCount;
  final String Query;
  final Map<String, double> NumericProperties;
  final Map<String, String> StringProperties;

  MatchmakerAddMessage(
      this.MinCount, this.MaxCount, this.Query, this.NumericProperties, this.StringProperties);
}
