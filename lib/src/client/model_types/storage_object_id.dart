////@Data
/**
 * An identifier for a storage object.
 */
class StorageObjectId {
  /**
   * The collection which stores the object.
   */
  final String collection;

  /**
   * The key of the object within the collection.
   */
  final String key;

  /**
   * The version hash of the object.
   */
  final String version;

  /**
   * The user owner of the object.
   */
  final String userId;

  StorageObjectId(this.collection, this.key, this.version, this.userId);
}
