////@Data
import 'permission_read.dart';
import 'permission_write.dart';

/**
 * An identifier and values for a storage object.
 */
class StorageObjectWrite {
  /**
   * The collection which stores the object.
   */
  final String collection;

  /**
   * The key of the object within the collection.
   */
  final String key;

  /**
   * The actual content of the object. Must be JSON.
   */
  final String value;

  /**
   * Read permission of the object.
   */
  final PermissionRead permissionRead;

  /**
   * Write permission of the object.
   */
  final PermissionWrite permissionWrite;

  /**
   * The version hash of the object to check against the server.
   */
  final String version;

  StorageObjectWrite(this.collection, this.key, this.value, this.permissionRead,
      this.permissionWrite, this.version);
}
