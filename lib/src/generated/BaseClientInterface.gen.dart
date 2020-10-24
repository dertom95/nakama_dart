
// 
// THIS FILE IS GENERATED USING
// make swagger-gen 
// 

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';
import 'package:meta/meta.dart';
import 'package:nakama_client/src/client/NakamaSession.dart';

abstract class BaseClientInterface {
    /// Authenticate a user with Apple's GameCenter against the server.
/// @param body The Game Center account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateGameCenter({final String bundleId,final int timestampSeconds,final String salt,final String signature,final String publicKeyUrl,final String playerId,final bool create,final String username});
/// List tournament records.
/// @param session The session you want to operate on
/// @param tournamentId The ID of the tournament to list for.
/// @param ownerIds One or more owners to retrieve records for.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param cursor A next or previous page cursor.
/// @param expiry Expiry in seconds (since epoch) to begin fetching records from.
ResponseFuture<TournamentRecordList> listTournamentRecords(final NakamaSession session,{@required final String tournamentId,final List<String> ownerIds,final int limit,final String cursor,final int expiry});
/// Write a record to a tournament.
/// @param session The session you want to operate on
/// @param tournamentId The tournament ID to write the record for.
/// @param body Record input.
ResponseFuture<LeaderboardRecord> writeTournamentRecord(final NakamaSession session,{@required final String tournamentId,final int score,final int subscore,final String metadata});
/// Authenticate a user with an Apple ID against the server.
/// @param body The Apple account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateApple({final String token,final bool create,final String username});
/// Remove Facebook from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkFacebook(final NakamaSession session,{final String token});
/// Add a device ID to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkDevice(final NakamaSession session,{final String id});
/// Authenticate a user with a Facebook OAuth token against the server.
/// @param body The Facebook account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
/// @param sync Import Facebook friends for the user.
Future<NakamaSession> authenticateFacebook({final String token,final bool create,final String username,final bool sync_});
/// Authenticate a user with Google against the server.
/// @param body The Google account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateGoogle({final String token,final bool create,final String username});
/// Add Facebook Instant Game to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkFacebookInstantGame(final NakamaSession session,{final String signedPlayerInfo});
/// Remove the email+password from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkEmail(final NakamaSession session,{final String email,final String password});
/// Block one or more users by ID or username.
/// @param session The session you want to operate on
/// @param ids The account id of a user.
/// @param usernames The account username of a user.
ResponseFuture<void> blockFriends(final NakamaSession session,{final List<String> ids,final List<String> usernames});
/// Leave a group the user is a member of.
/// @param session The session you want to operate on
/// @param groupId The group ID to leave.
ResponseFuture<void> leaveGroup(final NakamaSession session,{@required final String groupId});
/// List all users that are part of a group.
/// @param session The session you want to operate on
/// @param groupId The group ID to list from.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param state The group user state to list.
/// @param cursor An optional next page cursor.
ResponseFuture<GroupUserList> listGroupUsers(final NakamaSession session,{@required final String groupId,final int limit,final int state,final String cursor});
/// Fetch the current user's account.
/// @param session The session you want to operate on
ResponseFuture<Account> getAccount(final NakamaSession session);
/// Update fields in the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> updateAccount(final NakamaSession session,{final String username,final String displayName,final String avatarUrl,final String langTag,final String location,final String timezone});
/// List publicly readable storage objects in a given collection.
/// @param session The session you want to operate on
/// @param collection The collection which stores the object.
/// @param userId ID of the user.
/// @param limit The number of storage objects to list. Between 1 and 100.
/// @param cursor The cursor to page through results from.
ResponseFuture<StorageObjectList> listStorageObjects(final NakamaSession session,{@required final String collection,final String userId,final int limit,final String cursor});
/// Fetch zero or more users by ID and/or username.
/// @param session The session you want to operate on
/// @param ids The account id of a user.
/// @param usernames The account username of a user.
/// @param facebookIds The Facebook ID of a user.
ResponseFuture<Users> getUsers(final NakamaSession session,{final List<String> ids,final List<String> usernames,final List<String> facebookIds});
/// Get storage objects.
/// @param session The session you want to operate on
ResponseFuture<StorageObjects> readStorageObjects(final NakamaSession session,{final List<ReadStorageObjectId> objectIds});
/// Write objects into the storage engine.
/// @param session The session you want to operate on
ResponseFuture<StorageObjectAcks> writeStorageObjects(final NakamaSession session,{final List<WriteStorageObject> objects});
/// Add users to a group.
/// @param session The session you want to operate on
/// @param groupId The group to add users to.
/// @param user_ids The users to add.
ResponseFuture<void> addGroupUsers(final NakamaSession session,{@required final String groupId,final List<String> userIds});
/// Authenticate a user with a device id against the server.
/// @param body The device account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateDevice({final String id,final bool create,final String username});
/// List leaderboard records that belong to a user.
/// @param session The session you want to operate on
/// @param leaderboardId The ID of the tournament to list for.
/// @param ownerId The owner to retrieve records around.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param expiry Expiry in seconds (since epoch) to begin fetching records from.
ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(final NakamaSession session,{@required final String leaderboardId,@required final String ownerId,final int limit,final int expiry});
/// Fetch list of notifications.
/// @param session The session you want to operate on
/// @param limit The number of notifications to get. Between 1 and 100.
/// @param cacheableCursor A cursor to page through notifications. May be cached by clients to get from point in time forwards.
ResponseFuture<NotificationList> listNotifications(final NakamaSession session,{final int limit,final String cacheableCursor});
/// Delete one or more notifications for the current user.
/// @param session The session you want to operate on
/// @param ids The id of notifications.
ResponseFuture<void> deleteNotifications(final NakamaSession session,{final List<String> ids});
/// Delete one or more objects by ID or username.
/// @param session The session you want to operate on
ResponseFuture<void> deleteStorageObjects(final NakamaSession session,{final List<DeleteStorageObjectId> objectIds});
/// Remove Steam from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkSteam(final NakamaSession session,{final String token});
/// Import Facebook friends and add them to a user's account.
/// @param session The session you want to operate on
/// @param body The Facebook account details.
/// @param reset Reset the current user's friends list.
ResponseFuture<void> importFacebookFriends(final NakamaSession session,{final String token,final bool reset});
/// List groups based on given filters.
/// @param session The session you want to operate on
/// @param name List groups that contain this value in their names.
/// @param cursor Optional pagination cursor.
/// @param limit Max number of groups to return. Between 1 and 100.
ResponseFuture<GroupList> listGroups(final NakamaSession session,{final String name,final String cursor,final int limit});
/// Create a new group with the current user as the owner.
/// @param session The session you want to operate on
ResponseFuture<Group> createGroup(final NakamaSession session,{final String description,final String langTag,final String avatarUrl,final bool open,final int maxCount,final String name});
/// Authenticate a user with a custom id against the server.
/// @param body The custom account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateCustom({final String id,final bool create,final String username});
/// Kick a set of users from a group.
/// @param session The session you want to operate on
/// @param groupId The group ID to kick from.
/// @param user_ids The users to kick.
ResponseFuture<void> kickGroupUsers(final NakamaSession session,{@required final String groupId,final List<String> userIds});
/// List current or upcoming tournaments.
/// @param session The session you want to operate on
/// @param categoryStart The start of the categories to include. Defaults to 0.
/// @param categoryEnd The end of the categories to include. Defaults to 128.
/// @param startTime The start time for tournaments. Defaults to epoch.
/// @param endTime The end time for tournaments. Defaults to +1 year from current Unix time.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param cursor A next page cursor for listings (optional).
ResponseFuture<TournamentList> listTournaments(final NakamaSession session,{final int categoryStart,final int categoryEnd,final int startTime,final int endTime,final int limit,final String cursor});
/// Attempt to join an open and running tournament.
/// @param session The session you want to operate on
/// @param tournamentId The ID of the tournament to join. The tournament must already exist.
ResponseFuture<void> joinTournament(final NakamaSession session,{@required final String tournamentId});
/// Remove the custom ID from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkCustom(final NakamaSession session,{final String id});
/// Add a custom ID to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkCustom(final NakamaSession session,{final String id});
/// Add an email+password to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkEmail(final NakamaSession session,{final String email,final String password});
/// Immediately join an open group, or request to join a closed one.
/// @param session The session you want to operate on
/// @param groupId The group ID to join. The group must already exist.
ResponseFuture<void> joinGroup(final NakamaSession session,{@required final String groupId});
/// Execute a Lua function on the server.
/// @param session The session you want to operate on
/// @param id The identifier of the function.
/// @param payload The payload of the function which must be a JSON object.
/// @param httpKey The authentication key used when executed as a non-client HTTP request.
ResponseFuture<Rpc> rpcFunc2(final NakamaSession session,{@required final String id,final String payload,final String httpKey});
/// Execute a Lua function on the server.
/// @param session The session you want to operate on
/// @param id The identifier of the function.
/// @param body The payload of the function which must be a JSON object.
/// @param httpKey The authentication key used when executed as a non-client HTTP request.
ResponseFuture<Rpc> rpcFunc(final NakamaSession session,{@required final String id,@required final String body,final String httpKey});
/// Authenticate a user with a Facebook Instant Game token against the server.
/// @param body The Facebook Instant Game account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateFacebookInstantGame({final String signedPlayerInfo,final bool create,final String username});
/// Demote a set of users in a group to the next role down.
/// @param session The session you want to operate on
/// @param groupId The group ID to demote in.
/// @param user_ids The users to demote.
ResponseFuture<void> demoteGroupUsers(final NakamaSession session,{@required final String groupId,@required final List<String> userIds});
/// Remove Apple's GameCenter from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkGameCenter(final NakamaSession session,{final String playerId,final String bundleId,final int timestampSeconds,final String salt,final String signature,final String publicKeyUrl});
/// Delete one or more users by ID or username.
/// @param session The session you want to operate on
/// @param ids The account id of a user.
/// @param usernames The account username of a user.
ResponseFuture<void> deleteFriends(final NakamaSession session,{final List<String> ids,final List<String> usernames});
/// Add friends by ID or username to a user's account.
/// @param session The session you want to operate on
/// @param ids The account id of a user.
/// @param usernames The account username of a user.
ResponseFuture<void> addFriends(final NakamaSession session,{final List<String> ids,final List<String> usernames});
/// List all friends for the current user.
/// @param session The session you want to operate on
/// @param limit Max number of records to return. Between 1 and 100.
/// @param state The friend state to list.
/// @param cursor An optional next page cursor.
ResponseFuture<FriendList> listFriends(final NakamaSession session,{final int limit,final int state,final String cursor});
/// List leaderboard records.
/// @param session The session you want to operate on
/// @param leaderboardId The ID of the leaderboard to list for.
/// @param ownerIds One or more owners to retrieve records for.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param cursor A next or previous page cursor.
/// @param expiry Expiry in seconds (since epoch) to begin fetching records from. Optional. 0 means from current time.
ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(final NakamaSession session,{@required final String leaderboardId,final List<String> ownerIds,final int limit,final String cursor,final int expiry});
/// Delete a leaderboard record.
/// @param session The session you want to operate on
/// @param leaderboardId The leaderboard ID to delete from.
ResponseFuture<void> deleteLeaderboardRecord(final NakamaSession session,{@required final String leaderboardId});
/// Write a record to a leaderboard.
/// @param session The session you want to operate on
/// @param leaderboardId The ID of the leaderboard to write to.
/// @param body Record input.
ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(final NakamaSession session,{@required final String leaderboardId,final int score,final int subscore,final String metadata});
/// Authenticate a user with Steam against the server.
/// @param body The Steam account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateSteam({final String token,final bool create,final String username});
/// Add Steam to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkSteam(final NakamaSession session,{final String token});
/// Remove the device ID from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkDevice(final NakamaSession session,{final String id});
/// Remove Facebook Instant Game profile from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkFacebookInstantGame(final NakamaSession session,{final String signedPlayerInfo});
/// Authenticate a user with an email+password against the server.
/// @param body The email account details.
/// @param create Register the account if the user does not already exist.
/// @param username Set the username on the account at register. Must be unique.
Future<NakamaSession> authenticateEmail({final String email,final String password,final bool create,final String username});
/// Add an Apple ID to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkApple(final NakamaSession session,{final String token});
/// Add Apple's GameCenter to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkGameCenter(final NakamaSession session,{final String bundleId,final int timestampSeconds,final String salt,final String signature,final String publicKeyUrl,final String playerId});
/// Remove the Apple ID from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkApple(final NakamaSession session,{final String token});
/// List a channel's message history.
/// @param session The session you want to operate on
/// @param channelId The channel ID to list from.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param forward True if listing should be older messages to newer, false if reverse.
/// @param cursor A pagination cursor, if any.
ResponseFuture<ChannelMessageList> listChannelMessages(final NakamaSession session,{@required final String channelId,final int limit,final bool forward,final String cursor});
/// Fetch list of running matches.
/// @param session The session you want to operate on
/// @param limit Limit the number of returned matches.
/// @param authoritative Authoritative or relayed matches.
/// @param label Label filter.
/// @param minSize Minimum user count.
/// @param maxSize Maximum user count.
/// @param query Arbitrary label query.
ResponseFuture<MatchList> listMatches(final NakamaSession session,{final int limit,final bool authoritative,final String label,final int minSize,final int maxSize,final String query});
/// A healthcheck which load balancers can use to check the service.
/// @param session The session you want to operate on
ResponseFuture<void> healthcheck(final NakamaSession session);
/// Add Google to the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> linkGoogle(final NakamaSession session,{final String token});
/// Submit an event for processing in the server's registered runtime custom events handler.
/// @param session The session you want to operate on
ResponseFuture<void> event(final NakamaSession session,{final String name,final Map<String,String> properties,final String timestamp,final bool external_});
/// Update fields in a given group.
/// @param session The session you want to operate on
/// @param groupId The ID of the group to update.
ResponseFuture<void> updateGroup(final NakamaSession session,{@required final String groupId,final bool open,final String name,final String description,final String langTag,final String avatarUrl});
/// Delete a group by ID.
/// @param session The session you want to operate on
/// @param groupId The id of a group.
ResponseFuture<void> deleteGroup(final NakamaSession session,{@required final String groupId});
/// List groups the current user belongs to.
/// @param session The session you want to operate on
/// @param userId ID of the user.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param state The user group state to list.
/// @param cursor An optional next page cursor.
ResponseFuture<UserGroupList> listUserGroups(final NakamaSession session,{@required final String userId,final int limit,final int state,final String cursor});
/// Add Facebook to the social profiles on the current user's account.
/// @param session The session you want to operate on
/// @param body The Facebook account details.
/// @param sync Import Facebook friends for the user.
ResponseFuture<void> linkFacebook(final NakamaSession session,{final String token,final bool sync_});
/// List publicly readable storage objects in a given collection.
/// @param session The session you want to operate on
/// @param collection The collection which stores the object.
/// @param userId ID of the user.
/// @param limit The number of storage objects to list. Between 1 and 100.
/// @param cursor The cursor to page through results from.
ResponseFuture<StorageObjectList> listStorageObjects2(final NakamaSession session,{@required final String collection,@required final String userId,final int limit,final String cursor});
/// List tournament records for a given owner.
/// @param session The session you want to operate on
/// @param tournamentId The ID of the tournament to list for.
/// @param ownerId The owner to retrieve records around.
/// @param limit Max number of records to return. Between 1 and 100.
/// @param expiry Expiry in seconds (since epoch) to begin fetching records from.
ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(final NakamaSession session,{@required final String tournamentId,@required final String ownerId,final int limit,final int expiry});
/// Remove Google from the social profiles on the current user's account.
/// @param session The session you want to operate on
ResponseFuture<void> unlinkGoogle(final NakamaSession session,{final String token});
/// Promote a set of users in a group to the next role up.
/// @param session The session you want to operate on
/// @param groupId The group ID to promote in.
/// @param user_ids The users to promote.
ResponseFuture<void> promoteGroupUsers(final NakamaSession session,{@required final String groupId,final List<String> userIds});
/// Ban a set of users from a group.
/// @param session The session you want to operate on
/// @param groupId The group to ban users from.
/// @param user_ids The users to ban.
ResponseFuture<void> banGroupUsers(final NakamaSession session,{@required final String groupId,final List<String> userIds});

}
