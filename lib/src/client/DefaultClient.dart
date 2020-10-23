import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/client/NakamaSession.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';

BoolValue boolTrue = BoolValue()..value = true;
BoolValue boolFalse = BoolValue()..value = false;

BoolValue getBool(bool b) => b ? boolTrue : boolFalse;
StringValue getString(String s) => StringValue()..value = s;

Int32Value getInt32(int i) {
  var val = Int32Value()..value = i;
  return val;
}

Int64Value getInt64(int i) {
  var val = Int64Value()..value = Int64(i);
  return val;
}

UInt32Value getUInt32(int i) {
  var val = UInt32Value()..value = i;
  return val;
}

UInt64Value getUInt64(int i) {
  var val = UInt64Value()..value = Int64(i);
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
    return client.addFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> addGroupUsers(
      NakamaSession session, String groupId, List<String> ids) {
    var req = AddGroupUsersRequest()
      ..groupId = groupId
      ..userIds.addAll(ids);
    return client.addGroupUsers(req, options: session.calloptJWT);
  }

  @override
  Future<NakamaSession> authenticateCustom(String id,
      {String username, bool create = false}) async {
    var req = AuthenticateCustomRequest()
      ..create_2 = getBool(create)
      ..account = (AccountCustom()..id = id);

    if (username != null) req..username = username;

    var session =
        await client.authenticateCustom(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  Future<NakamaSession> authenticateDevice(String id,
      {String username, bool create = false}) async {
    var req = AuthenticateDeviceRequest()
      ..account = (AccountDevice()..id = id)
      ..create_2 = getBool(create);

    if (username != null) req..username = username;
    var session =
        await client.authenticateDevice(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  Future<NakamaSession> authenticateEmail(String email, String password,
      {String username, bool create = false}) async {
    var req = AuthenticateEmailRequest()
      ..account = (AccountEmail()
        ..email = email
        ..password = password)
      ..create_2 = getBool(create);

    if (username != null) req..username = username;
    var session =
        await client.authenticateEmail(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  Future<NakamaSession> authenticateFacebook(String accessToken,
      {String username,
      bool create = false,
      bool importFriends = false}) async {
    var req = AuthenticateFacebookRequest()
      ..account = (AccountFacebook()..token = accessToken)
      ..create_2 = getBool(create);

    if (username != null) req..username = username;
    var session =
        await client.authenticateFacebook(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  Future<NakamaSession> authenticateGameCenter(String playerId, String bundleId,
      int timestampSeconds, String salt, String signature, String publicKeyUrl,
      {String username, bool create = false}) async {
    var req = AuthenticateGameCenterRequest()
      ..account = (AccountGameCenter()
        ..playerId = playerId
        ..bundleId = bundleId
        ..timestampSeconds = Int64(timestampSeconds)
        ..signature = signature
        ..publicKeyUrl = publicKeyUrl)
      ..create_2 = getBool(create);

    if (username != null) req..username = username;
    var session =
        await client.authenticateGameCenter(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  Future<NakamaSession> authenticateGoogle(String accessToken,
      {String username, bool create = false}) async {
    var req = AuthenticateGoogleRequest()
      ..account = (AccountGoogle()..token = accessToken)
      ..create_2 = getBool(create);

    if (username != null) req..username = username;
    var session =
        await client.authenticateGoogle(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  Future<NakamaSession> authenticateSteam(String token,
      {String username, bool create = false}) async {
    var req = AuthenticateSteamRequest()
      ..account = (AccountSteam()..token = token)
      ..create_2 = getBool(create);

    if (username != null) req..username = username;
    var session =
        await client.authenticateSteam(req, options: calloptBasicAuth);
    return NakamaSession(session, this);
  }

  @override
  ResponseFuture<Empty> blockFriends(NakamaSession session, List<String> ids,
      {List<String> usernames}) {
    var req = BlockFriendsRequest()..ids.addAll(ids);
    if (usernames != null) req..usernames.addAll(usernames);
    return client.blockFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Group> createGroup(NakamaSession session, String name,
      {String description, String avatarUrl, String langTag, bool open}) {
    var req = CreateGroupRequest()..name = name;
    if (description != null) req..description = description;
    if (avatarUrl != null) req..avatarUrl = avatarUrl;
    if (langTag != null) req..langTag = langTag;
    if (open != null) req..open = open;
    return client.createGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> deleteFriends(NakamaSession session, List<String> ids,
      {List<String> usernames}) {
    var req = DeleteFriendsRequest()..ids.addAll(ids);
    if (usernames != null) req.usernames.addAll(usernames);
    return client.deleteFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> deleteGroup(NakamaSession session, String groupId) {
    var req = DeleteGroupRequest()..groupId = groupId;
    return client.deleteGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> deleteLeaderboardRecord(
      NakamaSession session, String leaderboardId) {
    var req = DeleteLeaderboardRecordRequest()..leaderboardId = leaderboardId;
    return client.deleteLeaderboardRecord(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> deleteNotifications(
      NakamaSession session, List<String> notificationIds) {
    var req = DeleteNotificationsRequest()..ids.addAll(notificationIds);
    return client.deleteNotifications(req, options: session.calloptJWT);
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
    var req = GetUsersRequest()..ids.addAll(ids);
    if (facebookIds != null) req..facebookIds.addAll(facebookIds);
    if (usernames != null) req..usernames.addAll(usernames);
  }

  @override
  ResponseFuture<Empty> importFacebookFriends(
      NakamaSession session, String token,
      {bool reset = false}) {
    var req = ImportFacebookFriendsRequest()
      ..account = (AccountFacebook()..token = token)
      ..reset = getBool(reset);
    return client.importFacebookFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> joinGroup(NakamaSession session, String groupId) {
    var req = JoinGroupRequest()..groupId = groupId;
    return client.joinGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> joinTournament(
      NakamaSession session, String tournamentId) {
    var req = JoinTournamentRequest()..tournamentId = tournamentId;
    return client.joinTournament(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> kickGroupUsers(
      NakamaSession session, String groupId, List<String> ids) {
    var req = KickGroupUsersRequest()
      ..groupId = groupId
      ..userIds.addAll(ids);
    return client.kickGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> leaveGroup(NakamaSession session, String groupId) {
    var req = LeaveGroupRequest()..groupId = groupId;
    return client.leaveGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> linkCustom(NakamaSession session, String id) {
    return client.linkCustom(AccountCustom()..id, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> linkDevice(NakamaSession session, String id) {
    return client.linkDevice(AccountDevice()..id = id,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> linkEmail(
      NakamaSession session, String email, String password) {
    return client.linkEmail(
        AccountEmail()
          ..email = email
          ..password = password,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> linkFacebook(NakamaSession session, String accessToken,
      {bool importFriends = false}) {
    return client.linkFacebook(
        LinkFacebookRequest()
          ..account = (AccountFacebook()..token = accessToken),
        options: session.calloptJWT);
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
    return client.linkGameCenter(
        AccountGameCenter()
          ..playerId = playerId
          ..bundleId = bundleId
          ..timestampSeconds = Int64(timestampSeconds)
          ..signature = signature
          ..publicKeyUrl = publicKeyUrl,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> linkGoogle(NakamaSession session, String accessToken) {
    return client.linkGoogle(AccountGoogle()..token = accessToken,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> linkSteam(NakamaSession session, String token) {
    return client.linkSteam(AccountSteam()..token = token);
  }

  @override
  ResponseFuture<ChannelMessageList> listChannelMessages(
      NakamaSession session, String channelId,
      {int limit, String cursor, bool forward = false}) {
    var req = ListChannelMessagesRequest()..channelId = channelId;
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    if (forward != null) req..forward = getBool(forward);
    return client.listChannelMessages(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<FriendList> listFriends(NakamaSession session,
      {int limit, int state, String cursor}) {
    var req = ListFriendsRequest();
    if (limit != null) req..limit = getInt32(limit);
    if (state != null) req..state = getInt32(state);
    if (cursor != null) req..cursor = cursor;
    return client.listFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<GroupUserList> listGroupUsers(
      NakamaSession session, String groupId,
      {int limit, int state, String cursor}) {
    var req = ListGroupUsersRequest()..groupId = groupId;
    if (limit != null) req..limit = getInt32(limit);
    if (state != null) req..state = getInt32(state);
    if (cursor != null) req..cursor = cursor;
    return client.listGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<GroupList> listGroups(NakamaSession session, String name,
      {int limit, String cursor}) {
    var req = ListGroupsRequest()..name = name;
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listGroups(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(
      NakamaSession session, String leaderboardId,
      {List<String> ownerIds, int expiry, int limit, String cursor}) {
    var req = ListLeaderboardRecordsRequest()..leaderboardId = leaderboardId;
    if (ownerIds != null) req..ownerIds.addAll(ownerIds);
    if (expiry != null) req..expiry = getInt64(expiry);
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listLeaderboardRecords(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(
      NakamaSession session, String leaderboardId, String ownerId,
      {int expiry, int limit}) {
    var req = ListLeaderboardRecordsAroundOwnerRequest()
      ..leaderboardId = leaderboardId
      ..ownerId = ownerId;

    if (expiry != null) req.expiry = getInt64(expiry);
    if (limit != null) req.limit = getUInt32(limit);
    return client.listLeaderboardRecordsAroundOwner(req,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<MatchList> listMatches(NakamaSession session,
      {int min, int max, int limit, String label, bool authoritative = false}) {
    var req = ListMatchesRequest();
    if (min != null) req..minSize = getInt32(min);
    if (max != null) req..maxSize = getInt32(max);
    if (limit != null) req..limit = getInt32(limit);
    if (label != null) req..label = getString(label);
    if (authoritative != null) req..authoritative = getBool(authoritative);
    return client.listMatches(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<NotificationList> listNotifications(NakamaSession session,
      {int limit, String cacheableCursor}) {
    var req = ListNotificationsRequest();
    if (limit != null) req..limit = getInt32(limit);
    if (cacheableCursor != null) req..cacheableCursor = cacheableCursor;
    return client.listNotifications(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<StorageObjectList> listStorageObjects(
      NakamaSession session, String collection,
      {int limit, String cursor}) {
    var req = ListStorageObjectsRequest()..collection = collection;
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listStorageObjects(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<TournamentRecordList> listTournamentRecords(
      NakamaSession session, String tournamentId,
      {int expiry, int limit, String cursor, List<String> ownerIds}) {
    var req = ListTournamentRecordsRequest()..tournamentId = tournamentId;
    if (expiry != null) req..expiry = getInt64(expiry);
    if (limit != null) req.limit = getInt32(limit);
    if (cursor != null) req.cursor = cursor;
    return client.listTournamentRecords(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(
      NakamaSession session, String tournamentId, String ownerId,
      {int expiry, int limit}) {
    var req = ListTournamentRecordsAroundOwnerRequest()
      ..tournamentId = tournamentId
      ..ownerId = ownerId;

    if (expiry != null) req..expiry = getInt64(expiry);
    if (limit != null) req.limit = getUInt32(limit);
    return client.listTournamentRecordsAroundOwner(req,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<TournamentList> listTournaments(NakamaSession session,
      {int categoryStart = 0,
      int categoryEnd = 128,
      int startTime,
      int endTime,
      int limit,
      String cursor}) {
    var req = ListTournamentsRequest();
    if (categoryStart != null) req..categoryStart = getUInt32(categoryStart);
    if (categoryEnd != null) req..categoryEnd = getUInt32(categoryEnd);
    if (startTime != null) req..startTime = getUInt32(startTime);
    if (endTime != null) req..endTime = getUInt32(endTime);
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listTournaments(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<UserGroupList> listUserGroups(NakamaSession session,
      {String userId}) {
    var req = ListUserGroupsRequest();
    if (userId != null) req..userId = userId;

    return client.listUserGroups(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<StorageObjectList> listUsersStorageObjects(
      NakamaSession session, String collection, String userId,
      {int limit, String cursor}) {
    var req = ListStorageObjectsRequest()
      ..collection = collection
      ..userId = userId;
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listStorageObjects(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> promoteGroupUsers(
      NakamaSession session, String groupId, List<String> ids) {
    var req = PromoteGroupUsersRequest()
      ..groupId = groupId
      ..userIds.addAll(ids);
    return client.promoteGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Rpc> rpc(NakamaSession session, String id, {String payload}) {
    var req = Rpc()..id = id;
    if (payload != null) req.payload = payload;
    return client.rpcFunc(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> unlinkCustom(NakamaSession session, String id) {
    return client.unlinkCustom((AccountCustom()..id = id),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> unlinkDevice(NakamaSession session, String id) {
    return client.unlinkDevice((AccountDevice()..id = id),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> unlinkEmail(
      NakamaSession session, String email, String password) {
    return client.unlinkEmail(
        (AccountEmail()
          ..email = email
          ..password = password),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> unlinkFacebook(
      NakamaSession session, String accessToken) {
    return client.unlinkFacebook((AccountFacebook()..token = accessToken),
        options: session.calloptJWT);
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
    return client.unlinkGameCenter(
        (AccountGameCenter()
          ..playerId = playerId
          ..bundleId = bundleId
          ..timestampSeconds = Int64(timestampSeconds)
          ..signature = signature
          ..publicKeyUrl = publicKeyUrl),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> unlinkGoogle(
      NakamaSession session, String accessToken) {
    return client.unlinkGoogle((AccountGoogle()..token = accessToken),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> unlinkSteam(NakamaSession session, String token) {
    return client.unlinkSteam((AccountSteam()..token = token));
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

    if (username != null) req.username = getString(username);
    if (displayName != null) req.displayName = getString(displayName);
    if (avatarUrl != null) req.avatarUrl = getString(avatarUrl);
    if (langTag != null) req.langTag = getString(langTag);
    if (location != null) req.location = getString(location);
    if (timezone != null) req.timezone = getString(timezone);

    return client.updateAccount(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> updateGroup(NakamaSession session, String groupId,
      {String name,
      String description,
      String avatarUrl,
      String langTag,
      bool open}) {
    var req = UpdateGroupRequest()..groupId = groupId;
    if (name != null) req..name = getString(name);
    if (description != null) req..description = getString(description);
    if (avatarUrl != null) req..avatarUrl = getString(avatarUrl);
    if (langTag != null) req..langTag = getString(langTag);
    if (open != null) req..open = getBool(open);

    return client.updateGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(
      NakamaSession session, String leaderboardId, int score,
      {int subscore, String metadata}) {
    var record = WriteLeaderboardRecordRequest_LeaderboardRecordWrite()
      ..score = Int64(score);
    if (subscore != null) record..subscore = Int64(subscore);
    if (metadata != null) record..metadata = metadata;

    var req = WriteLeaderboardRecordRequest()
      ..leaderboardId = leaderboardId
      ..record = record;

    return client.writeLeaderboardRecord(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecord> writeTournamentRecord(
      NakamaSession session, String tournamentId, int score,
      {int subscore, String metadata}) {
    var record = WriteTournamentRecordRequest_TournamentRecordWrite()
      ..score = Int64(score);

    if (subscore != null) record.subscore = Int64(subscore);
    if (metadata != null) record.metadata = metadata;

    var req = WriteTournamentRecordRequest()
      ..tournamentId = tournamentId
      ..record = record;

    return client.writeTournamentRecord(req, options: session.calloptJWT);
  }
}
