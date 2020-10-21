import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';

BoolValue boolTrue = BoolValue()..value = true;
BoolValue boolFalse = BoolValue()..value = false;
BoolValue getBool(bool b) => b ? boolTrue : boolFalse;
Int32Value getInt32(int i) {
  var val = Int32Value()..value = i;
  //val.value = i;
  return val;
}

class DefaultClient extends BaseClient {
  DefaultClient({String nakama_host, int nakama_port, String serverKey})
      : super(
            nakama_host: nakama_host,
            nakama_port: nakama_port,
            serverKey: serverKey);

  @override
  ResponseFuture<Empty> addFriends(NakamaSession session, List<String> ids,
      {List<String> usernames}) {
    var req = AddFriendsRequest()..ids.addAll(ids);
    if (usernames != null) {
      req..usernames.addAll(usernames);
    }
    return client.addFriends(req);
  }

  @override
  ResponseFuture<Empty> addGroupUsers(
      NakamaSession session, String groupId, List<String> ids) {
    // TODO: implement addGroupUsers
    throw UnimplementedError();
  }

  @override
  Future<NakamaSession> authenticateCustom(String id,
      {String username, bool create = false}) async {
    var req = AuthenticateCustomRequest()
      ..create_2 = getBool(create)
      ..account = (AccountCustom()..id = id);

    if (username != null) req..username = username;

    var session = await client.authenticateCustom(req);
    return NakamaSession(session);
  }

  @override
  Future<NakamaSession> authenticateDevice(String id,
      {String username, bool create = false}) {
    // TODO: implement authenticateDevice
    throw UnimplementedError();
  }

  @override
  Future<NakamaSession> authenticateEmail(String email, String password,
      {String username, bool create = false}) {
    // TODO: implement authenticateEmail
    throw UnimplementedError();
  }

  @override
  Future<NakamaSession> authenticateFacebook(String accessToken,
      {String username, bool create = false, bool importFriends = false}) {
    // TODO: implement authenticateFacebook
    throw UnimplementedError();
  }

  @override
  Future<NakamaSession> authenticateGameCenter(String playerId, String bundleId,
      int timestampSeconds, String salt, String signature, String publicKeyUrl,
      {String username, bool create = false}) {
    // TODO: implement authenticateGameCenter
    throw UnimplementedError();
  }

  @override
  Future<NakamaSession> authenticateGoogle(String accessToken,
      {String username, bool create = false}) {
    // TODO: implement authenticateGoogle
    throw UnimplementedError();
  }

  @override
  Future<NakamaSession> authenticateSteam(String token,
      {String username, bool create = false}) {
    // TODO: implement authenticateSteam
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> blockFriends(NakamaSession session, List<String> ids,
      {List<String> usernames}) {
    // TODO: implement blockFriends
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Group> createGroup(NakamaSession session, String name,
      {String description, String avatarUrl, String langTag, bool open}) {
    // TODO: implement createGroup
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> deleteFriends(NakamaSession session, List<String> ids,
      {List<String> usernames}) {
    // TODO: implement deleteFriends
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> deleteGroup(NakamaSession session, String groupId) {
    // TODO: implement deleteGroup
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> deleteLeaderboardRecord(
      NakamaSession session, String leaderboardId) {
    // TODO: implement deleteLeaderboardRecord
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> deleteNotifications(
      NakamaSession session, List<String> notificationIds) {
    // TODO: implement deleteNotifications
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> disconnect({int timeout, Duration unit}) {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Account> getAccount(NakamaSession session) {
    return client.getAccount(Empty(), options: session.calloptJWT);
  }

  @override
  ResponseFuture<Users> getUsers(NakamaSession session, List<String> ids,
      {List<String> usernames, List<String> facebookIds}) {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> importFacebookFriends(
      NakamaSession session, String token,
      {bool reset = false}) {
    // TODO: implement importFacebookFriends
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> joinGroup(NakamaSession session, String groupId) {
    // TODO: implement joinGroup
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> joinTournament(
      NakamaSession session, String tournamentId) {
    // TODO: implement joinTournament
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> kickGroupUsers(
      NakamaSession session, String groupId, List<String> ids) {
    // TODO: implement kickGroupUsers
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> leaveGroup(NakamaSession session, String groupId) {
    // TODO: implement leaveGroup
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkCustom(NakamaSession session, String id) {
    // TODO: implement linkCustom
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkDevice(NakamaSession session, String id) {
    // TODO: implement linkDevice
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkEmail(
      NakamaSession session, String email, String password) {
    // TODO: implement linkEmail
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkFacebook(NakamaSession session, String accessToken,
      {bool importFriends = false}) {
    // TODO: implement linkFacebook
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkGameCenter(
      NakamaSession session,
      String playerId,
      String bundleId,
      int timestampSeconds,
      String salt,
      String signature,
      String publicKeyUrl) {
    // TODO: implement linkGameCenter
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkGoogle(NakamaSession session, String accessToken) {
    // TODO: implement linkGoogle
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> linkSteam(NakamaSession session, String token) {
    // TODO: implement linkSteam
    throw UnimplementedError();
  }

  @override
  ResponseFuture<ChannelMessageList> listChannelMessages(
      NakamaSession session, String channelId,
      {int limit, String cursor, bool forward = false}) {
    // TODO: implement listChannelMessages
    throw UnimplementedError();
  }

  @override
  ResponseFuture<FriendList> listFriends(NakamaSession session) {
    // TODO: implement listFriends
    throw UnimplementedError();
  }

  @override
  ResponseFuture<GroupUserList> listGroupUsers(
      NakamaSession session, String groupId) {
    // TODO: implement listGroupUsers
    throw UnimplementedError();
  }

  @override
  ResponseFuture<GroupList> listGroups(NakamaSession session, String name,
      {int limit, String cursor}) {
    // TODO: implement listGroups
    throw UnimplementedError();
  }

  @override
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(
      NakamaSession session, String leaderboardId,
      {List<String> ownerIds, int expiry, int limit, String cursor}) {
    // TODO: implement listLeaderboardRecords
    throw UnimplementedError();
  }

  @override
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(
      NakamaSession session, String leaderboardId, String ownerId,
      {int expiry, int limit}) {
    // TODO: implement listLeaderboardRecordsAroundOwner
    throw UnimplementedError();
  }

  @override
  ResponseFuture<MatchList> listMatches(NakamaSession session,
      {int min, int max, int limit, String label, bool authoritative = false}) {
    // TODO: implement listMatches
    throw UnimplementedError();
  }

  @override
  ResponseFuture<NotificationList> listNotifications(NakamaSession session,
      {int limit, String cacheableCursor}) {
    // TODO: implement listNotifications
    throw UnimplementedError();
  }

  @override
  ResponseFuture<StorageObjectList> listStorageObjects(
      NakamaSession session, String collection,
      {int limit, String cursor}) {
    // TODO: implement listStorageObjects
    throw UnimplementedError();
  }

  @override
  ResponseFuture<TournamentRecordList> listTournamentRecords(
      NakamaSession session, String tournamentId,
      {int expiry, int limit, String cursor, List<String> ownerIds}) {
    // TODO: implement listTournamentRecords
    throw UnimplementedError();
  }

  @override
  ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(
      NakamaSession session, String tournamentId, String ownerId,
      {int expiry, int limit}) {
    // TODO: implement listTournamentRecordsAroundOwner
    throw UnimplementedError();
  }

  @override
  ResponseFuture<TournamentList> listTournaments(NakamaSession session,
      {int categoryStart = 0,
      int categoryEnd = 128,
      int startTime,
      int endTime,
      int limit,
      String cursor}) {
    // TODO: implement listTournaments
    throw UnimplementedError();
  }

  @override
  ResponseFuture<UserGroupList> listUserGroups(NakamaSession session,
      {String userId}) {
    // TODO: implement listUserGroups
    throw UnimplementedError();
  }

  @override
  ResponseFuture<StorageObjectList> listUsersStorageObjects(
      NakamaSession session, String collection, String userId,
      {int limit, String cursor}) {
    // TODO: implement listUsersStorageObjects
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> promoteGroupUsers(
      NakamaSession session, String groupId, List<String> ids) {
    // TODO: implement promoteGroupUsers
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Rpc> rpc(NakamaSession session, String id, {String payload}) {
    // TODO: implement rpc
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkCustom(NakamaSession session, String id) {
    // TODO: implement unlinkCustom
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkDevice(NakamaSession session, String id) {
    // TODO: implement unlinkDevice
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkEmail(
      NakamaSession session, String email, String password) {
    // TODO: implement unlinkEmail
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkFacebook(
      NakamaSession session, String accessToken) {
    // TODO: implement unlinkFacebook
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkGameCenter(
      NakamaSession session,
      String playerId,
      String bundleId,
      int timestampSeconds,
      String salt,
      String signature,
      String publicKeyUrl) {
    // TODO: implement unlinkGameCenter
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkGoogle(
      NakamaSession session, String accessToken) {
    // TODO: implement unlinkGoogle
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> unlinkSteam(NakamaSession session, String token) {
    // TODO: implement unlinkSteam
    throw UnimplementedError();
  }

  @override
  ResponseFuture<Empty> updateAccount(NakamaSession session,
      {String username,
      String displayName,
      String avatarUrl,
      String langTag,
      String location,
      String timezone}) {
    var req = UpdateAccountRequest();

    if (username != null) req.username = StringValue()..value = username;
    if (displayName != null)
      req.displayName = StringValue()..value = displayName;
    if (avatarUrl != null) req.avatarUrl = StringValue()..value = avatarUrl;
    if (langTag != null) req.langTag = StringValue()..value = langTag;
    if (location != null) req.location = StringValue()..value = location;
    if (timezone != null) req.timezone = StringValue()..value = timezone;

    client.updateAccount(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> updateGroup(
      NakamaSession session, String groupId, String name,
      {String description, String avatarUrl, String langTag, bool open}) {
    // TODO: implement updateGroup
    throw UnimplementedError();
  }

  @override
  ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(
      NakamaSession session, String leaderboardId, int score,
      {int subscore, String metadata}) {
    // TODO: implement writeLeaderboardRecord
    throw UnimplementedError();
  }

  @override
  ResponseFuture<LeaderboardRecord> writeTournamentRecord(
      NakamaSession session, String tournamentId, int score,
      {int subscore, String metadata}) {
    // TODO: implement writeTournamentRecord
    throw UnimplementedError();
  }
}
