import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/client/BaseClientMixing.dart';
import 'package:nakama_client/src/generated/proto/api.pb.dart';
import 'package:nakama_client/src/generated/proto/apigrpc.pbgrpc.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';

abstract class BaseClientInterface {
  ResponseFuture<void> deleteGroup(String groupId);
  ResponseFuture<void> updateGroup(String groupId, String avatarUrl, bool open,
      String name, String description, String langTag);
  ResponseFuture<NotificationList> listNotifications(
      limit, String cacheableCursor);
  ResponseFuture<void> deleteNotifications(List<String> ids);
  ResponseFuture<StorageObjects> readStorageObjects(
      List<ReadStorageObjectsRequest> objectIds);
  ResponseFuture<StorageObjectAcks> writeStorageObjects(
      List<WriteStorageObjectsRequest> objects);
  ResponseFuture<Session> authenticateSteam(
      String token, bool create, String username);
  ResponseFuture<void> linkDevice(String id);
  ResponseFuture<void> unlinkGoogle(String token);
  ResponseFuture<ChannelMessageList> listChannelMessages(
      String channelId, limit, bool forward, String cursor);
  ResponseFuture<GroupList> listGroups(String name, String cursor, limit);
  ResponseFuture<Group> createGroup(String langTag, String avatarUrl, bool open,
      maxCount, String name, String description);
  ResponseFuture<UserGroupList> listUserGroups(
      String userId, limit, state, String cursor);
  ResponseFuture<Session> authenticateDevice(
      String id, bool create, String username);
  ResponseFuture<void> unlinkDevice(String id);
  ResponseFuture<void> unlinkEmail(String email, String password);
  ResponseFuture<void> unlinkGameCenter(String publicKeyUrl, String playerId,
      String bundleId, String timestampSeconds, String salt, String signature);
  ResponseFuture<void> joinTournament(String tournamentId);
  ResponseFuture<void> linkEmail(String email, String password);
  ResponseFuture<void> linkFacebook(String token, bool sync);
  ResponseFuture<void> unlinkCustom(String id);
  ResponseFuture<void> promoteGroupUsers(String groupId, List<String> userIds);
  ResponseFuture<void> leaveGroup(String groupId);
  ResponseFuture<TournamentList> listTournaments(
      categoryStart, categoryEnd, startTime, endTime, limit, String cursor);
  ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(
      String tournamentId, String ownerId, limit, String expiry);
  ResponseFuture<void> healthcheck();
  ResponseFuture<Session> authenticateEmail(
      String email, String password, bool create, String username);
  ResponseFuture<void> linkCustom(String id);
  ResponseFuture<void> blockFriends(List<String> ids, List<String> usernames);
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(
      String leaderboardId, String ownerId, limit, String expiry);
  ResponseFuture<void> joinGroup(String groupId);
  ResponseFuture<void> kickGroupUsers(String groupId, List<String> userIds);
  ResponseFuture<GroupUserList> listGroupUsers(
      String groupId, limit, state, String cursor);
  ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(
      String leaderboardId, String metadata, String score, String subscore);
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(
      String leaderboardId,
      List<String> ownerIds,
      limit,
      String cursor,
      String expiry);
  ResponseFuture<void> deleteLeaderboardRecord(String leaderboardId);
  ResponseFuture<void> deleteStorageObjects(
      List<DeleteStorageObjectsRequest> objectIds);
  ResponseFuture<StorageObjectList> listStorageObjects2(
      String collection, String userId, limit, String cursor);
  ResponseFuture<TournamentRecordList> listTournamentRecords(
      String tournamentId,
      List<String> ownerIds,
      limit,
      String cursor,
      String expiry);
  ResponseFuture<LeaderboardRecord> writeTournamentRecord(
      String tournamentId, String score, String subscore, String metadata);
  ResponseFuture<void> linkGameCenter(
      String salt,
      String signature,
      String publicKeyUrl,
      String playerId,
      String bundleId,
      String timestampSeconds);
  ResponseFuture<void> linkGoogle(String token);
  ResponseFuture<void> deleteFriends(List<String> ids, List<String> usernames);
  ResponseFuture<void> addFriends(List<String> ids, List<String> usernames);
  ResponseFuture<FriendList> listFriends(limit, state, String cursor);
  ResponseFuture<MatchList> listMatches(
      limit, bool authoritative, String label, minSize, maxSize, String query);
  ResponseFuture<Rpc> rpcFunc2(String id, String payload, String httpKey);
// ResponseFuture<Rpc> rpcFunc(String id,unknown: body);
  ResponseFuture<StorageObjectList> listStorageObjects(
      String collection, String userId, limit, String cursor);
  ResponseFuture<Account> getAccount();
  ResponseFuture<void> updateAccount(String username, String displayName,
      String avatarUrl, String langTag, String location, String timezone);
  ResponseFuture<Session> authenticateCustom(
      String id, bool create, String username);
  ResponseFuture<void> unlinkFacebook(String token);
  ResponseFuture<void> importFacebookFriends(String token, bool reset);
  ResponseFuture<void> unlinkSteam(String token);
  ResponseFuture<void> addGroupUsers(String groupId, List<String> userIds);
  ResponseFuture<Users> getUsers(
      List<String> ids, List<String> usernames, List<String> facebookIds);
  ResponseFuture<Session> authenticateFacebook(
      String token, bool create, String username, bool sync);
  ResponseFuture<Session> authenticateGameCenter(
      String playerId,
      String bundleId,
      String timestampSeconds,
      String salt,
      String signature,
      String publicKeyUrl,
      bool create,
      String username);
  ResponseFuture<Session> authenticateGoogle(
      String token, bool create, String username);
  ResponseFuture<void> linkSteam(String token);
}
