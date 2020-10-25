import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:nakama_client/src/client/nakama_session.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:nakama_client/src/client/baseclient.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';

BoolValue boolTrue = BoolValue()..value = true;
BoolValue boolFalse = BoolValue()..value = false;

BoolValue getBool(bool b) => b ? boolTrue : boolFalse;
StringValue getString(String s) => StringValue()..value = s;

typedef void NakamaErrorHandler(GrpcError e);

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
  DefaultClient(
      {String nakama_host,
      int nakama_port,
      String serverKey,
      String caCertFile,
      BadCertificateHandler badCertificateHandler})
      : super(
            nakama_host: nakama_host,
            nakama_port: nakama_port,
            serverKey: serverKey,
            caCertFile: caCertFile,
            badCertHandler: badCertificateHandler);

  @override
  ResponseFuture<void> addFriends(NakamaSession session,
      {List<String> ids, List<String> usernames}) {
    var req = AddFriendsRequest()..ids.addAll(ids);
    if (usernames != null) {
      req..usernames.addAll(usernames);
    }
    return client.addFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> addGroupUsers(NakamaSession session,
      {String groupId, List<String> userIds}) {
    var req = AddGroupUsersRequest()
      ..groupId = groupId
      ..userIds.addAll(userIds);
    return client.addGroupUsers(req, options: session.calloptJWT);
  }

  @override
  Future<NakamaSession> authenticateCustom(
      {String id,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateCustomRequest()
        ..create_2 = getBool(create)
        ..account = (AccountCustom()..id = id);

      if (username != null) req..username = username;

      var session =
          await client.authenticateCustom(req, options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateApple(
      {String token,
      bool create,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateAppleRequest()
        ..account = (AccountApple()..token = token);

      if (create != null) req..create_2 = getBool(create);
      if (username != null) req..username = username;
      var session =
          await client.authenticateApple(req, options: calloptBasicAuth);

      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateDevice(
      {String id,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateDeviceRequest()
        ..account = (AccountDevice()..id = id)
        ..create_2 = getBool(create);

      if (username != null) req..username = username;
      var session =
          await client.authenticateDevice(req, options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateEmail(
      {String email,
      String password,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateEmailRequest()
        ..account = (AccountEmail()
          ..email = email
          ..password = password);

      if (create != null) req..create_2 = getBool(create);
      if (username != null) req..username = username;
      var session =
          await client.authenticateEmail(req, options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateFacebook(
      {String token,
      bool create = true,
      String username,
      bool sync_,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateFacebookRequest()
        ..account = (AccountFacebook()..token = token)
        ..create_2 = getBool(create);

      if (username != null) req..username = username;
      var session =
          await client.authenticateFacebook(req, options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateFacebookInstantGame(
      {String signedPlayerInfo,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateFacebookInstantGameRequest()
        ..create_2 = getBool(create)
        ..account =
            (AccountFacebookInstantGame()..signedPlayerInfo = signedPlayerInfo);

      if (username != null) req..username = username;
      var session = await client.authenticateFacebookInstantGame(req,
          options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateGameCenter(
      {String playerId,
      String bundleId,
      int timestampSeconds,
      String salt,
      String signature,
      String publicKeyUrl,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
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
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateGoogle(
      {String token,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateGoogleRequest()
        ..account = (AccountGoogle()..token = token)
        ..create_2 = getBool(create);

      if (username != null) req..username = username;
      var session =
          await client.authenticateGoogle(req, options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  Future<NakamaSession> authenticateSteam(
      {String token,
      bool create = true,
      String username,
      NakamaErrorHandler onFail}) async {
    try {
      var req = AuthenticateSteamRequest()
        ..account = (AccountSteam()..token = token)
        ..create_2 = getBool(create);

      if (username != null) req..username = username;
      var session =
          await client.authenticateSteam(req, options: calloptBasicAuth);
      return NakamaSession(session, this);
    } on GrpcError catch (e) {
      if (onFail != null) {
        onFail(e);
        return null;
      } else
        throw e;
    }
  }

  @override
  ResponseFuture<void> banGroupUsers(NakamaSession session,
      {String groupId, List<String> userIds}) {
    var req = BanGroupUsersRequest()..groupId = groupId;
    if (userIds != null) req.userIds.addAll(userIds);
    return client.banGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> blockFriends(NakamaSession session,
      {List<String> ids, List<String> usernames}) {
    var req = BlockFriendsRequest()..ids.addAll(ids);
    if (usernames != null) req..usernames.addAll(usernames);
    return client.blockFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Group> createGroup(NakamaSession session,
      {int maxCount,
      String name,
      String description,
      String langTag,
      String avatarUrl,
      bool open}) {
    var req = CreateGroupRequest()..name = name;
    if (description != null) req..description = description;
    if (avatarUrl != null) req..avatarUrl = avatarUrl;
    if (langTag != null) req..langTag = langTag;
    if (open != null) req..open = open;
    return client.createGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> deleteFriends(NakamaSession session,
      {List<String> ids, List<String> usernames}) {
    var req = DeleteFriendsRequest()..ids.addAll(ids);
    if (usernames != null) req.usernames.addAll(usernames);
    return client.deleteFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> deleteGroup(NakamaSession session, {String groupId}) {
    var req = DeleteGroupRequest()..groupId = groupId;
    return client.deleteGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> deleteLeaderboardRecord(NakamaSession session,
      {String leaderboardId}) {
    var req = DeleteLeaderboardRecordRequest()..leaderboardId = leaderboardId;
    return client.deleteLeaderboardRecord(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> deleteNotifications(NakamaSession session,
      {List<String> ids}) {
    var req = DeleteNotificationsRequest()..ids.addAll(ids);
    return client.deleteNotifications(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> deleteStorageObjects(NakamaSession session,
      {List<DeleteStorageObjectId> objectIds}) {
    var req = DeleteStorageObjectsRequest();
    if (objectIds != null) req..objectIds.addAll(objectIds);
    return client.deleteStorageObjects(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> demoteGroupUsers(NakamaSession session,
      {String groupId, List<String> userIds}) {
    var req = DemoteGroupUsersRequest()..groupId = groupId;
    if (userIds != null) req..userIds.addAll(userIds);
    return client.demoteGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Empty> disconnect({int timeout, Duration unit}) {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  ResponseFuture<void> event(NakamaSession session,
      {bool external_,
      String name,
      Map<String, String> properties,
      String timestamp}) {
    var req = Event()..name = name;
    if (external_ != null) req..external = external_;
    if (properties != null) req..properties.addAll(properties);
    return client.event(req);
  }

  @override
  ResponseFuture<Account> getAccount(NakamaSession session) {
    return client.getAccount(Empty(), options: session.calloptJWT);
  }

  @override
  ResponseFuture<Users> getUsers(NakamaSession session,
      {List<String> ids, List<String> usernames, List<String> facebookIds}) {
    var req = GetUsersRequest()..ids.addAll(ids);
    if (facebookIds != null) req..facebookIds.addAll(facebookIds);
    if (usernames != null) req..usernames.addAll(usernames);
  }

  @override
  ResponseFuture<void> healthcheck(NakamaSession session) {
    return client.healthcheck(Empty());
  }

  @override
  ResponseFuture<void> importFacebookFriends(NakamaSession session,
      {String token, bool reset}) {
    var req = ImportFacebookFriendsRequest()
      ..account = (AccountFacebook()..token = token)
      ..reset = getBool(reset);
    return client.importFacebookFriends(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> joinGroup(NakamaSession session, {String groupId}) {
    var req = JoinGroupRequest()..groupId = groupId;
    return client.joinGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> joinTournament(NakamaSession session,
      {String tournamentId}) {
    var req = JoinTournamentRequest()..tournamentId = tournamentId;
    return client.joinTournament(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> kickGroupUsers(NakamaSession session,
      {String groupId, List<String> userIds}) {
    var req = KickGroupUsersRequest()
      ..groupId = groupId
      ..userIds.addAll(userIds);
    return client.kickGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> leaveGroup(NakamaSession session, {String groupId}) {
    var req = LeaveGroupRequest()..groupId = groupId;
    return client.leaveGroup(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkApple(NakamaSession session, {String token}) {
    return client.linkApple(AccountApple()..token = token,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkCustom(NakamaSession session, {String id}) {
    return client.linkCustom(AccountCustom()..id, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkDevice(NakamaSession session, {String id}) {
    return client.linkDevice(AccountDevice()..id = id,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkEmail(NakamaSession session,
      {String email, String password}) {
    return client.linkEmail(
        AccountEmail()
          ..email = email
          ..password = password,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkFacebook(NakamaSession session,
      {String token, bool sync_}) {
    return client.linkFacebook(
        LinkFacebookRequest()..account = (AccountFacebook()..token = token),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkFacebookInstantGame(NakamaSession session,
      {String signedPlayerInfo}) {
    return client.linkFacebookInstantGame(
        AccountFacebookInstantGame()..signedPlayerInfo = signedPlayerInfo);
  }

  @override
  ResponseFuture<void> linkGameCenter(NakamaSession session,
      {String playerId,
      String bundleId,
      int timestampSeconds,
      String salt,
      String signature,
      String publicKeyUrl}) {
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
  ResponseFuture<void> linkGoogle(NakamaSession session, {String token}) {
    return client.linkGoogle(AccountGoogle()..token = token,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> linkSteam(NakamaSession session, {String token}) {
    return client.linkSteam(AccountSteam()..token = token);
  }

  @override
  ResponseFuture<ChannelMessageList> listChannelMessages(NakamaSession session,
      {String channelId, int limit, bool forward, String cursor}) {
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
  ResponseFuture<GroupUserList> listGroupUsers(NakamaSession session,
      {String groupId, int limit, int state, String cursor}) {
    var req = ListGroupUsersRequest()..groupId = groupId;
    if (limit != null) req..limit = getInt32(limit);
    if (state != null) req..state = getInt32(state);
    if (cursor != null) req..cursor = cursor;
    return client.listGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<GroupList> listGroups(NakamaSession session,
      {String name, String cursor, int limit}) {
    var req = ListGroupsRequest()..name = name;
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listGroups(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(
      NakamaSession session,
      {String leaderboardId,
      List<String> ownerIds,
      int limit,
      String cursor,
      int expiry}) {
    var req = ListLeaderboardRecordsRequest()..leaderboardId = leaderboardId;
    if (ownerIds != null) req..ownerIds.addAll(ownerIds);
    if (expiry != null) req..expiry = getInt64(expiry.toInt());
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listLeaderboardRecords(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(
      NakamaSession session,
      {String leaderboardId,
      String ownerId,
      int limit,
      int expiry}) {
    var req = ListLeaderboardRecordsAroundOwnerRequest()
      ..leaderboardId = leaderboardId
      ..ownerId = ownerId;

    if (expiry != null) req.expiry = getInt64(expiry.toInt());
    if (limit != null) req.limit = getUInt32(expiry);
    return client.listLeaderboardRecordsAroundOwner(req,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<MatchList> listMatches(NakamaSession session,
      {int limit,
      bool authoritative,
      String label,
      int minSize,
      int maxSize,
      String query}) {
    var req = ListMatchesRequest();
    if (limit != null) req..limit = getInt32(limit);
    if (authoritative != null) req..authoritative = getBool(authoritative);
    if (label != null) req..label = getString(label);
    if (minSize != null) req..minSize = getInt32(minSize);
    if (maxSize != null) req..maxSize = getInt32(maxSize);
    if (query != null) req..query = getString(query);
    return client.listMatches(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<NotificationList> listNotifications(NakamaSession session,
      {int limit, String cacheableCursor}) {
    var req = ListNotificationsRequest();
    if (limit != null) req..limit = getInt32(limit);
    if (cacheableCursor != null) req..cacheableCursor = cacheableCursor;
    client.listNotifications(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<StorageObjectList> listStorageObjects(NakamaSession session,
      {String collection, String userId, int limit, String cursor}) {
    var req = ListStorageObjectsRequest()..collection = collection;
    if (limit != null) req..limit = getInt32(limit);
    if (cursor != null) req..cursor = cursor;
    return client.listStorageObjects(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<StorageObjectList> listStorageObjects2(NakamaSession session,
      {String collection, String userId, int limit, String cursor}) {
    // TODO: implement listStorageObjects2
    throw UnimplementedError();
  }

  @override
  ResponseFuture<TournamentRecordList> listTournamentRecords(
      NakamaSession session,
      {String tournamentId,
      List<String> ownerIds,
      int limit,
      String cursor,
      int expiry}) {
    var req = ListTournamentRecordsRequest()..tournamentId = tournamentId;
    if (expiry != null) req..expiry = getInt64(expiry);
    if (limit != null) req.limit = getInt32(limit);
    if (cursor != null) req.cursor = cursor;
    return client.listTournamentRecords(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(
      NakamaSession session,
      {String tournamentId,
      String ownerId,
      int limit,
      int expiry}) {
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
      {int categoryStart,
      int categoryEnd,
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
      {String userId, int limit, int state, String cursor}) {
    var req = ListUserGroupsRequest();
    if (userId != null) req..userId = userId;

    return client.listUserGroups(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> promoteGroupUsers(NakamaSession session,
      {String groupId, List<String> userIds}) {
    var req = PromoteGroupUsersRequest()
      ..groupId = groupId
      ..userIds.addAll(userIds);
    return client.promoteGroupUsers(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<StorageObjects> readStorageObjects(NakamaSession session,
      {List<ReadStorageObjectId> objectIds}) {
    var req = ReadStorageObjectsRequest();
    if (objectIds != null) req..objectIds.addAll(objectIds);
    return client.readStorageObjects(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Rpc> rpcFunc(NakamaSession session,
      {String id, String body, String httpKey}) {
    var req = Rpc()..id = id;
    if (body != null) req.payload = body;
    if (httpKey != null) req.httpKey = httpKey;
    return client.rpcFunc(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<Rpc> rpcFunc2(NakamaSession session,
      {String id, String payload, String httpKey}) {
    throw UnimplementedError();
  }

  @override
  ResponseFuture<void> unlinkApple(NakamaSession session, {String token}) {
    return client.unlinkApple(AccountApple()..token = token,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkCustom(NakamaSession session, {String id}) {
    return client.unlinkCustom((AccountCustom()..id = id),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkDevice(NakamaSession session, {String id}) {
    return client.unlinkDevice((AccountDevice()..id = id),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkEmail(NakamaSession session,
      {String email, String password}) {
    return client.unlinkEmail(
        (AccountEmail()
          ..email = email
          ..password = password),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkFacebook(NakamaSession session, {String token}) {
    return client.unlinkFacebook((AccountFacebook()..token = token),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkFacebookInstantGame(NakamaSession session,
      {String signedPlayerInfo}) {
    return client.unlinkFacebookInstantGame(
        AccountFacebookInstantGame()..signedPlayerInfo = signedPlayerInfo,
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkGameCenter(NakamaSession session,
      {String playerId,
      String bundleId,
      int timestampSeconds,
      String salt,
      String signature,
      String publicKeyUrl}) {
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
  ResponseFuture<void> unlinkGoogle(NakamaSession session, {String token}) {
    return client.unlinkGoogle((AccountGoogle()..token = token),
        options: session.calloptJWT);
  }

  @override
  ResponseFuture<void> unlinkSteam(NakamaSession session, {String token}) {
    return client.unlinkSteam((AccountSteam()..token = token));
  }

  @override
  ResponseFuture<void> updateAccount(NakamaSession session,
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
  ResponseFuture<void> updateGroup(NakamaSession session,
      {String groupId,
      String name,
      String description,
      String langTag,
      String avatarUrl,
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
      NakamaSession session,
      {String leaderboardId,
      int score,
      int subscore,
      String metadata}) {
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
  ResponseFuture<StorageObjectAcks> writeStorageObjects(NakamaSession session,
      {List<WriteStorageObject> objects}) {
    var req = WriteStorageObjectsRequest();
    if (objects != null) req..objects.addAll(objects);
    return client.writeStorageObjects(req, options: session.calloptJWT);
  }

  @override
  ResponseFuture<LeaderboardRecord> writeTournamentRecord(NakamaSession session,
      {String tournamentId, int score, int subscore, String metadata}) {
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
