import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/client/NakamaSession.dart';
import 'package:nakama_client/src/generated/BaseClientInterface.gen.dart';
import 'package:nakama_client/src/generated/proto/apigrpc.pbgrpc.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pb.dart';

abstract class BaseClient with BaseClientInterface {
  String nakama_host = "127.0.0.1";
  int nakama_port = 7349;
  String serverKey = "defaultkey";
  CallOptions calloptBasicAuth;

  NakamaClient _client;
  NakamaClient get client => _client;

  ClientChannel _channel;

  BaseClient({this.nakama_host, this.nakama_port, this.serverKey}) {
    calloptBasicAuth = CallOptions(metadata: {
      "authorization":
          "Basic ${base64Encode(Utf8Encoder().convert("$serverKey:"))}"
    });
  }

  void connect() async {
    _channel = new ClientChannel(
      nakama_host,
      port: nakama_port,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    _client = new NakamaClient(
      _channel,
      options: calloptBasicAuth,
    );
    try {
      await client.healthcheck(Empty());
    } catch (e) {
      print(e);
    }
  }

/**
   * Disconnects the client. This function kills all outgoing exchanges immediately without waiting.
   * If arguments provided, This function kills all outgoing exchanges and waits until the channel is shutdown.
   */
  ResponseFuture<Empty> disconnect({int timeout, Duration unit});

//   /**
//    * Add one or more friends by id.
//    * @param session The session of the user.
//    * @param ids The ids of the users to add or invite as friends.
//    * @optional param usernames The usernames of the users to add as friends.
//    * @return A ResponseFuture.
//    *
//    */
//   ResponseFuture<Empty> addFriends(
//       final NakamaSession session, final List<String> ids,
//       {final List<String> usernames});

//   /**
//    * Add one or more users to the group.
//    * @param session The session of the user.
//    * @param groupId The id of the group to add users into.
//    * @param ids The ids of the users to add or invite to the group.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> addGroupUsers(final NakamaSession session,
//       final String groupId, final List<String> ids);

//   /**
//    * Authenticate a user with a custom id.
//    * @param id A custom identifier usually obtained from an external authentication service.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateCustom(final String id,
//       {final String username, final bool create = false});

//   /**
//    * Authenticate a user with a device id.
//    * @param id A device identifier usually obtained from a platform API.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateDevice(final String id,
//       {final String username, final bool create = false});

//   /**
//    * Authenticate a user with an email and password.
//    * @param email The email address of the user.
//    * @param password The password for the user.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateEmail(
//       final String email, final String password,
//       {final String username, final bool create = false});

//   /**
//    * Authenticate a user with a Facebook auth token.
//    * @param accessToken An OAuth access token from the Facebook SDK.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @param importFriends True if the Facebook friends should be imported.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateFacebook(final String accessToken,
//       {final String username,
//       final bool create = false,
//       final bool importFriends = false});

//   /**
//    * Authenticate a user with a Google auth token.
//    * @param accessToken An OAuth access token from the Google SDK.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateGoogle(final String accessToken,
//       {final String username, final bool create = false});

//   /**
//    * Authenticate a user with a Steam auth token.
//    * @param token An authentication token from the Steam network.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateSteam(final String token,
//       {final String username, final bool create = false});

//   /**
//    * Authenticate a user with Apple Game Center.
//    * @param playerId The player id of the user in Game Center.
//    * @param bundleId The bundle id of the Game Center application.
//    * @param timestampSeconds The date and time that the signature was created.
//    * @param salt A random <c>NSString</c> used to compute the hash and keep it randomized.
//    * @param signature The verification signature data generated.
//    * @param publicKeyUrl The URL for the public encryption key.
//    * @param username A username used to create the user.
//    * @param create True if the user should be created when authenticated.
//    * @return A ResponseFuture to resolve a session object.
//    */
//   Future<NakamaSession> authenticateGameCenter(
//       final String playerId,
//       final String bundleId,
//       final int timestampSeconds,
//       final String salt,
//       final String signature,
//       final String publicKeyUrl,
//       {final String username,
//       final bool create = false});

//   /**
//    * Block one or more friends by id.
//    * @param session The session of the user.
//    * @param ids The ids of the users to block.
//    * @param usernames The usernames of the users to block.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> blockFriends(
//       final NakamaSession session, final List<String> ids,
//       {final List<String> usernames});

//   /**
//    * Create a group.
//    * @param session The session of the user.
//    * @param name The name for the group.
//    * @param description A description for the group.
//    * @param avatarUrl An avatar url for the group.
//    * @param langTag A language tag in BCP-47 format for the group.
//    * @param open True if the group should have open membership.
//    * @return A ResponseFuture to resolve a new group object.
//    */
//   ResponseFuture<Group> createGroup(
//       final NakamaSession session, final String name,
//       {final String description,
//       final String avatarUrl,
//       final String langTag,
//       final bool open});

//   /**
//    * Delete one more or users by id.
//    * @param session The session of the user.
//    * @param ids the user ids to remove as friends.
//    * @param usernames The usernames to remove as friends.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> deleteFriends(
//       final NakamaSession session, final List<String> ids,
//       {final List<String> usernames});

//   /**
//    * Delete a group by id.
//    *
//    * @param session The session of the user.
//    * @param groupId The group id to to remove.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> deleteGroup(
//       final NakamaSession session, final String groupId);

//   /**
//    * Delete a leaderboard record.
//    *
//    * @param session The session of the user.
//    * @param leaderboardId The id of the leaderboard with the record to be deleted.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> deleteLeaderboardRecord(
//       final NakamaSession session, final String leaderboardId);

//   /**
//    * Delete one or more notifications by id.
//    *
//    * @param session The session of the user.
//    * @param notificationIds The notification ids to remove.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> deleteNotifications(
//       final NakamaSession session, final List<String> notificationIds);

//   /**
//    * Delete one or more storage objects.
//    *
//    * @param session The session of the user.
//    * @param objectIds The ids of the objects to delete.
//    * @return A ResponseFuture.
//    */
//   //ResponseFuture<Empty> deleteStorageObjects(final NakamaSession session, final List<StorageObjectId> objectIds);

//   /**
//    * Fetch the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @return A ResponseFuture to resolve an account object.
//    */
//   ResponseFuture<Account> getAccount(final NakamaSession session);

//   /**
//    * Fetch one or more users by id, usernames, and Facebook ids.
//    *
//    * @param session The session of the user.
//    * @param ids List of user IDs.
//    * @param usernames List of usernames.
//    * @param facebookIds List of Facebook IDs.
//    * @return A ResponseFuture to resolve user objects.
//    */
//   ResponseFuture<Users> getUsers(
//       final NakamaSession session, final List<String> ids,
//       {final List<String> usernames, final List<String> facebookIds});

//   /**
//    * Import Facebook friends and add them to the user's account.
//    *
//    * The server will import friends when the user authenticates with Facebook. This function can be used to be
//    * explicit with the import operation.
//    *
//    * @param session The session of the user.
//    * @param token An OAuth access token from the Facebook SDK.
//    * @param reset True if the Facebook friend import for the user should be reset.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> importFacebookFriends(
//       final NakamaSession session, final String token,
//       {final bool reset = false});

//   /**
//    * Join a group if it has open membership or request to join it.
//    *
//    * @param session The session of the user.
//    * @param groupId The id of the group to join.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> joinGroup(
//       final NakamaSession session, final String groupId);

//   /**
//    * Join a group if it has open membership or request to join it.
//    *
//    * @param session The session of the user.
//    * @param tournamentId The id of the tournament to join.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> joinTournament(
//       final NakamaSession session, final String tournamentId);

//   /**
//    * Kick one or more users from the group.
//    *
//    * @param session The session of the user.
//    * @param groupId The id of the group.
//    * @param ids The ids of the users to kick.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> kickGroupUsers(final NakamaSession session,
//       final String groupId, final List<String> ids);

//   /**
//    * Leave a group by id.
//    *
//    * @param session The session of the user.
//    * @param groupId The id of the group to leave.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> leaveGroup(
//       final NakamaSession session, final String groupId);

//   /**
//    * Link a custom id to the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param id A custom identifier usually obtained from an external authentication service.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkCustom(
//       final NakamaSession session, final String id);

//   /**
//    * Link a device id to the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param id A device identifier usually obtained from a platform API.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkDevice(
//       final NakamaSession session, final String id);

//   /**
//    * Link an email with password to the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param email The email address of the user.
//    * @param password The password for the user.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkEmail(
//       final NakamaSession session, final String email, final String password);

//   /**
//    * Link a Facebook profile to a user account.
//    *
//    * @param session The session of the user.
//    * @param accessToken An OAuth access token from the Facebook SDK.
//    * @param importFriends True if the Facebook friends should be imported.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkFacebook(
//       final NakamaSession session, final String accessToken,
//       {final bool importFriends = false});

//   /**
//    * Link a Google profile to a user account.
//    *
//    * @param session The session of the user.
//    * @param accessToken An OAuth access token from the Google SDK.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkGoogle(
//       final NakamaSession session, final String accessToken);

//   /**
//    * Link a Steam profile to a user account.
//    *
//    * @param session The session of the user.
//    * @param token An authentication token from the Steam network.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkSteam(
//       final NakamaSession session, final String token);

//   /**
//    * Link a Game Center profile to a user account.
//    *
//    * @param session The session of the user.
//    * @param playerId The player id of the user in Game Center.
//    * @param bundleId The bundle id of the Game Center application.
//    * @param timestampSeconds The date and time that the signature was created.
//    * @param salt A random <c>NSString</c> used to compute the hash and keep it randomized.
//    * @param signature The verification signature data generated.
//    * @param publicKeyUrl The URL for the public encryption key.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> linkGameCenter(
//       final NakamaSession session,
//       final String playerId,
//       final String bundleId,
//       final int timestampSeconds,
//       final String salt,
//       final String signature,
//       final String publicKeyUrl);

//   /**
//    * List messages from a chat channel.
//    *
//    * @param session The session of the user.
//    * @param channelId A channel identifier.
//    * @param limit The number of chat messages to list.
//    * @param cursor A cursor for the current position in the messages history to list.
//    * @param forward Fetch messages forward from the current cursor (or the start).
//    * @return A ResponseFuture to resolve channel message objects.
//    */
//   ResponseFuture<ChannelMessageList> listChannelMessages(
//       final NakamaSession session, final String channelId,
//       {final int limit, final String cursor, final bool forward = false});

//   /**
//    * List of friends of the current user.
//    *
//    * @param session The session of the user.
//    * @return A ResponseFuture to resolve friend objects.
//    */
//   ResponseFuture<FriendList> listFriends(final NakamaSession session);

//   /**
//    * List all users part of the group.
//    *
//    * @param session The session of the user.
//    * @param groupId The id of the group.
//    * @return A ResponseFuture to resolve group user objects.
//    */
//   ResponseFuture<GroupUserList> listGroupUsers(
//       final NakamaSession session, final String groupId);

//   /**
//    * List groups on the server.
//    *
//    * @param session The session of the user.
//    * @param name The name filter to apply to the group list.
//    * @param limit The number of groups to list.
//    * @param cursor A cursor for the current position in the groups to list.
//    * @return A ResponseFuture to resolve group objects.
//    */
//   ResponseFuture<GroupList> listGroups(
//       final NakamaSession session, final String name,
//       {final int limit, final String cursor});

//   /**
//    * List records from a leaderboard.
//    *
//    * @param session The session of the user.
//    * @param leaderboardId The id of the leaderboard to list.
//    * @param ownerIds Record owners to fetch with the list of records.
//    * @param expiry Expiry in seconds (since epoch) to begin fetching records from.
//    * @param limit The number of records to list.
//    * @param cursor A cursor for the current position in the leaderboard records to list.
//    * @return A ResponseFuture to resolve leaderboard record objects.
//    */
//   ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(
//       final NakamaSession session, final String leaderboardId,
//       {final List<String> ownerIds,
//       final int expiry,
//       final int limit,
//       final String cursor});

//   /**
//    * List leaderboard records from a given leaderboard around the owner.
//    * @param session The session of the user.
//    * @param leaderboardId The id of the leaderboard to list.
//    * @param ownerId The owner to retrieve records around.
//    * @param expiry Expiry in seconds (since epoch) to begin fetching records from.
//    * @param limit Max number of records to return. Between 1 and 100.
//    * @return A ResponseFuture to resolve leaderboard record objects.
//    */
//   ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(
//       final NakamaSession session,
//       final String leaderboardId,
//       final String ownerId,
//       {final int expiry,
//       final int limit});

//   /**
//    * Fetch a list of matches active on the server.
//    *
//    * @param session The session of the user.
//    * @param min The minimum number of match participants.
//    * @param max The maximum number of match participants.
//    * @param limit The number of matches to list.
//    * @param label The label to filter the match list on.
//    * @param authoritative <c>True</c> to include authoritative matches.
//    * @return A ResponseFuture to resolve match.
//    */
//   ResponseFuture<MatchList> listMatches(final NakamaSession session,
//       {final int min,
//       final int max,
//       final int limit,
//       final String label,
//       final bool authoritative = false});

//   /**
//    * List notifications for the user with an optional cursor.
//    *
//    * @param session The session of the user.
//    * @param limit The number of notifications to list.
//    * @param cacheableCursor A cursor for the current position in notifications to list.
//    * @return A ResponseFuture to resolve notifications objects.
//    */
//   ResponseFuture<NotificationList> listNotifications(
//       final NakamaSession session,
//       {final int limit,
//       final String cacheableCursor});

//   /**
//    * List storage objects in a collection which have public read access.
//    *
//    * @param session The session of the user.
//    * @param collection The collection to list over.
//    * @param limit The number of objects to list.
//    * @param cursor A cursor to paginate over the collection.
//    * @return A ResponseFuture which resolves to a storage object list.
//    */
//   ResponseFuture<StorageObjectList> listStorageObjects(
//       final NakamaSession session, final String collection,
//       {final int limit, final String cursor});

//   /**
//    * List active/upcoming tournaments based on given filters.
//    * @param session The session of the user.
//    * @param categoryStart The start of the categories to include. Defaults to 0.
//    * @param categoryEnd The end of the categories to include. Defaults to 128.
//    * @param startTime The start time for tournaments. Defaults to current Unix time.
//    * @param endTime The end time for tournaments. Defaults to +1 year from current Unix time.
//    * @param limit Max number of records to return. Between 1 and 100.
//    * @param cursor A next page cursor for listings.
//    * @return a ResponseFuture which resolved to a tournament list.
//    */
//   ResponseFuture<TournamentList> listTournaments(final NakamaSession session,
//       {final int categoryStart = 0,
//       final int categoryEnd = 128,
//       final int startTime,
//       final int endTime,
//       final int limit,
//       final String cursor});

//   /**
//    * List tournament records from a given tournament.
//    * @param session The session of the user.
//    * @param tournamentId The ID of the tournament to list for.
//    * @param expiry Expiry in seconds (since epoch) to begin fetching records from.
//    * @param limit Max number of records to return. Between 1 and 100.
//    * @param cursor A next or previous page cursor.
//    * @param ownerIds One or more owners to retrieve records for.
//    * @return a ResponseFuture which resolved to a tournament record list.
//    */
//   ResponseFuture<TournamentRecordList> listTournamentRecords(
//       final NakamaSession session, final String tournamentId,
//       {final int expiry,
//       final int limit,
//       final String cursor,
//       final List<String> ownerIds});

//   /**
//    * List tournament records from a given tournament around the owner.
//    * @param session The session of the user.
//    * @param tournamentId The ID of the tournament to list for.
//    * @param ownerId The owner to retrieve records around.
//    * @param expiry Expiry in seconds (since epoch) to begin fetching records from.
//    * @param limit Max number of records to return. Between 1 and 100.
//    * @return A ResponseFuture to resolve tournament record objects.
//    */
//   ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(
//       final NakamaSession session,
//       final String tournamentId,
//       final String ownerId,
//       {final int expiry,
//       final int limit});

//   /**
//    * List of groups the current user is a member of.
//    *
//    * @param session The session of the user.
//    * @param userId The id of the user whose groups to list.
//    * @return A ResponseFuture which resolves to group objects.
//    */
//   ResponseFuture<UserGroupList> listUserGroups(final NakamaSession session,
//       {final String userId});

//   /**
//    * List storage objects in a collection which beint to a specific user and have public read access.
//    *
//    * @param session The session of the user.
//    * @param collection The collection to list over.
//    * @param userId The user ID of the user to list objects for.
//    * @param limit The number of objects to list.
//    * @param cursor A cursor to paginate over the collection.
//    * @return A ResponseFuture which resolves to a storage object list.
//    */
//   ResponseFuture<StorageObjectList> listUsersStorageObjects(
//       final NakamaSession session, final String collection, final String userId,
//       {final int limit, final String cursor});

//   /**
//    * Promote one or more users in the group.
//    *
//    * @param session The session of the user.
//    * @param groupId The id of the group to promote users into.
//    * @param ids The ids of the users to promote.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> promoteGroupUsers(final NakamaSession session,
//       final String groupId, final List<String> ids);

//   /**
//    * Read one or more objects from the storage engine.
//    *
//    * @param session The session of the user.
//    * @param objectIds The objects to read.
//    * @return A ResponseFuture to resolve storage objects.
//    */
//   // ResponseFuture<StorageObjects> readStorageObjects(
//   //     final NakamaSession session, final List<StorageObjectId> objectIds);

//   /**
//    * Execute a Lua function with an input payload on the server.
//    *
//    * @param session The session of the user.
//    * @param id The id of the function to execute on the server.
//    * @param payload The payload to send with the function call.
//    * @return A ResponseFuture to resolve an RPC response.
//    */
//   ResponseFuture<Rpc> rpc(final NakamaSession session, final String id,
//       {final String payload});

// //    TODO(mo): Is this still needed from the client / doable using gRPC?
// //    ResponseFuture<Rpc> rpc(final String httpKey, final String id);
// //    ResponseFuture<Rpc> rpc(final String httpKey, final String id, final String payload);

//   /**
//    * Unlink a custom id from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param id A custom identifier usually obtained from an external authentication service.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> unlinkCustom(
//       final NakamaSession session, final String id);

//   /**
//    * Unlink a device id from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param id A device identifier usually obtained from a platform API.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> unlinkDevice(
//       final NakamaSession session, final String id);

//   /**
//    * Unlink an email with password from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param email The email address of the user.
//    * @param password The password for the user.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> unlinkEmail(
//       final NakamaSession session, final String email, final String password);

//   /**
//    * Unlink a Facebook profile from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param accessToken An OAuth access token from the Facebook SDK.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> unlinkFacebook(
//       final NakamaSession session, final String accessToken);

//   /**
//    * Unlink a Google profile from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param accessToken An OAuth access token from the Google SDK.
//    * @return A ResponseFuture.
//    */

//   ResponseFuture<Empty> unlinkGoogle(
//       final NakamaSession session, final String accessToken);

//   /**
//    * Unlink a Steam profile from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param token An authentication token from the Steam network.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> unlinkSteam(
//       final NakamaSession session, final String token);

//   /**
//    * Unlink a Game Center profile from the user account owned by the session.
//    *
//    * @param session The session of the user.
//    * @param playerId The player id of the user in Game Center.
//    * @param bundleId The bundle id of the Game Center application.
//    * @param timestampSeconds The date and time that the signature was created.
//    * @param salt A random <c>NSString</c> used to compute the hash and keep it randomized.
//    * @param signature The verification signature data generated.
//    * @param publicKeyUrl The URL for the public encryption key.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> unlinkGameCenter(
//       final NakamaSession session,
//       final String playerId,
//       final String bundleId,
//       final int timestampSeconds,
//       final String salt,
//       final String signature,
//       final String publicKeyUrl);

//   /**
//    * Update the current user's account on the server.
//    *
//    * @param session The session for the user.
//    * @param username The new username for the user.
//    * @param displayName A new display name for the user.
//    * @param avatarUrl A new avatar url for the user.
//    * @param langTag A new language tag in BCP-47 format for the user.
//    * @param location A new location for the user.
//    * @param timezone New timezone information for the user.
//    * @return A ResponseFuture to complete the account update.
//    */
//   ResponseFuture<Empty> updateAccount(final NakamaSession session,
//       {final String username,
//       final String displayName,
//       final String avatarUrl,
//       final String langTag,
//       final String location,
//       final String timezone});

//   /**
//    * Update a group.
//    *
//    * The user must have the correct access permissions for the group.
//    *
//    * @param session The session of the user.
//    * @param groupId The id of the group to update.
//    * @param name A new name for the group.
//    * @param description A new description for the group.
//    * @param avatarUrl A new avatar url for the group.
//    * @param langTag A new language tag in BCP-47 format for the group.
//    * @param open True if the group should have open membership.
//    * @return A ResponseFuture.
//    */
//   ResponseFuture<Empty> updateGroup(
//       final NakamaSession session, final String groupId,
//       {final String name,
//       final String description,
//       final String avatarUrl,
//       final String langTag,
//       final bool open});

//   /**
//    * Write a record to a leaderboard.
//    *
//    * @param session The session for the user.
//    * @param leaderboardId The id of the leaderboard to write.
//    * @param score The score for the leaderboard record.
//    * @param subscore The subscore for the leaderboard record.
//    * @param metadata The metadata for the leaderboard record.
//    * @return A ResponseFuture to complete the leaderboard record write.
//    */
//   ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(
//       final NakamaSession session, final String leaderboardId, final int score,
//       {final int subscore, final String metadata});

//   /**
//    * Write objects to the storage engine.
//    *
//    * @param session The session of the user.
//    * @param objects The objects to write.
//    * @return A ResponseFuture to resolve the acknowledgements with writes.
//    */
//   // ResponseFuture<StorageObjectAcks> writeStorageObjects(
//   //     final NakamaSession session, final List<StorageObjectWrite> objects);

//   /**
//    * A request to submit a score to a tournament.
//    *
//    * @param session The session for the user.
//    * @param tournamentId The tournament ID to write the record for.
//    * @param score The score value to submit.
//    * @param subscore An optional secondary value.
//    * @param metadata A JSON object of additional properties.
//    * @return A ResponseFuture to complete the tournament record write.
//    */
//   ResponseFuture<LeaderboardRecord> writeTournamentRecord(
//       final NakamaSession session, final String tournamentId, final int score,
//       {final int subscore, final String metadata});
}
