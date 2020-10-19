
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc_web.dart';
import 'package:nakama_client/src/generated/proto/api.pb.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';

  BoolValue boolTrue = BoolValue()..value = true;
  BoolValue boolFalse = BoolValue()..value = false;
  BoolValue getBool(bool b) => b ? boolTrue : boolFalse;
  Int32Value getInt32(int i) {
    var val = Int32Value()..value = i;
    //val.value = i;
    return val;
  }
  Int64Value getInt64(Int64 i) {
    var val = Int64Value()..value = i;
    //val.value = i;
    return val;
  }


    ResponseFuture<void> leaveGroup(String groupId){ return client.leaveGroup(
LeaveGroupRequest()..groupId=groupId);
}

ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(String leaderboardId,String ownerId, limit,String expiry){ return client.listLeaderboardRecordsAroundOwner(
ListLeaderboardRecordsAroundOwnerRequest()..leaderboardId=leaderboardId..ownerId=ownerId..limit=getInt64(limit)..expiry=expiry);
}

ResponseFuture<TournamentRecordList> listTournamentRecords(String tournamentId,List<String> ownerIds, limit,String cursor,String expiry){ return client.listTournamentRecords(
ListTournamentRecordsRequest()..tournamentId=tournamentId..ownerIds.addAll(ownerIds)..limit=getInt32(limit)..cursor=cursor..expiry=expiry);
}

ResponseFuture<LeaderboardRecord> writeTournamentRecord(String tournamentId,String metadata,String score,String subscore){ return client.writeTournamentRecord(
WriteTournamentRecordRequest()..tournamentId=tournamentId(teTournamentRecordRequestTournamentRecordWrite()..metadata=metadata..score=score..subscore=subscore));
}

ResponseFuture<Session> authenticateCustom(String id,bool create,String username){ return client.authenticateCustom(
AuthenticateCustomRequest()(AccountCustom()..id=id)..create=getBool(create)..username=username);
}

ResponseFuture<Session> authenticateGoogle(String token,bool create,String username){ return client.authenticateGoogle(
AuthenticateGoogleRequest()(AccountGoogle()..token=token)..create=getBool(create)..username=username);
}

ResponseFuture<void> deleteStorageObjects(List<DeleteStorageObjectsRequest> objectIds){ return client.deleteStorageObjects(
DeleteStorageObjectsRequest()(DeleteStorageObjectsRequest()..objectIds.addAll(objectIds)));
}

ResponseFuture<void> joinTournament(String tournamentId){ return client.joinTournament(
JoinTournamentRequest()..tournamentId=tournamentId);
}

ResponseFuture<Session> authenticateSteam(String token,bool create,String username){ return client.authenticateSteam(
AuthenticateSteamRequest()(AccountSteam()..token=token)..create=getBool(create)..username=username);
}

ResponseFuture<void> linkFacebook(String token,bool sync){ return client.linkFacebook(
LinkFacebookRequest()(AccountFacebook()..token=token)..sync=getBool(sync));
}

ResponseFuture<void> linkGoogle(String token){ return client.linkGoogle(
LinkGoogleRequest()(AccountGoogle()..token=token));
}

ResponseFuture<GroupUserList> listGroupUsers(String groupId, limit, state,String cursor){ return client.listGroupUsers(
ListGroupUsersRequest()..groupId=groupId..limit=getInt32(limit)..state=getInt32(state)..cursor=cursor);
}

ResponseFuture<NotificationList> listNotifications( limit,String cacheableCursor){ return client.listNotifications(
ListNotificationsRequest()..limit=getInt32(limit)..cacheableCursor=cacheableCursor);
}

ResponseFuture<void> deleteNotifications(List<String> ids){ return client.deleteNotifications(
DeleteNotificationsRequest()..ids.addAll(ids));
}

ResponseFuture<StorageObjects> readStorageObjects(List<ReadStorageObjectsRequest> objectIds){ return client.readStorageObjects(
ReadStorageObjectsRequest()(ReadStorageObjectsRequest()..objectIds.addAll(objectIds)));
}

ResponseFuture<StorageObjectAcks> writeStorageObjects(List<WriteStorageObjectsRequest> objects){ return client.writeStorageObjects(
WriteStorageObjectsRequest()(WriteStorageObjectsRequest()..objects.addAll(objects)));
}

ResponseFuture<void> healthcheck(){ return client.healthcheck(
HealthcheckRequest());
}

ResponseFuture<Session> authenticateEmail(String email,String password,bool create,String username){ return client.authenticateEmail(
AuthenticateEmailRequest()(AccountEmail()..email=email..password=password)..create=getBool(create)..username=username);
}

ResponseFuture<void> linkDevice(String id){ return client.linkDevice(
LinkDeviceRequest()(AccountDevice()..id=id));
}

ResponseFuture<void> unlinkDevice(String id){ return client.unlinkDevice(
UnlinkDeviceRequest()(AccountDevice()..id=id));
}

ResponseFuture<TournamentList> listTournaments( categoryStart, categoryEnd, startTime, endTime, limit,String cursor){ return client.listTournaments(
ListTournamentsRequest()..categoryStart=getInt64(categoryStart)..categoryEnd=getInt64(categoryEnd)..startTime=getInt64(startTime)..endTime=getInt64(endTime)..limit=getInt32(limit)..cursor=cursor);
}

ResponseFuture<StorageObjectList> listStorageObjects(String collection,String userId, limit,String cursor){ return client.listStorageObjects(
ListStorageObjectsRequest()..collection=collection..userId=userId..limit=getInt32(limit)..cursor=cursor);
}

ResponseFuture<Users> getUsers(List<String> ids,List<String> usernames,List<String> facebookIds){ return client.getUsers(
GetUsersRequest()..ids.addAll(ids)..usernames.addAll(usernames)..facebookIds.addAll(facebookIds));
}

ResponseFuture<Account> getAccount(){ return client.getAccount(
GetAccountRequest());
}

ResponseFuture<void> updateAccount(String timezone,String username,String displayName,String avatarUrl,String langTag,String location){ return client.updateAccount(
UpdateAccountRequest()(UpdateAccountRequest()..timezone=timezone..username=username..displayName=displayName..avatarUrl=avatarUrl..langTag=langTag..location=location));
}

ResponseFuture<Session> authenticateDevice(String id,bool create,String username){ return client.authenticateDevice(
AuthenticateDeviceRequest()(AccountDevice()..id=id)..create=getBool(create)..username=username);
}

ResponseFuture<void> linkSteam(String token){ return client.linkSteam(
LinkSteamRequest()(AccountSteam()..token=token));
}

ResponseFuture<void> importFacebookFriends(String token,bool reset){ return client.importFacebookFriends(
ImportFacebookFriendsRequest()(AccountFacebook()..token=token)..reset=getBool(reset));
}

ResponseFuture<void> kickGroupUsers(String groupId,List<String> userIds){ return client.kickGroupUsers(
KickGroupUsersRequest()..groupId=groupId..userIds.addAll(userIds));
}

ResponseFuture<MatchList> listMatches( limit,bool authoritative,String label, minSize, maxSize,String query){ return client.listMatches(
ListMatchesRequest()..limit=getInt32(limit)..authoritative=getBool(authoritative)..label=label..minSize=getInt32(minSize)..maxSize=getInt32(maxSize)..query=query);
}

ResponseFuture<void> unlinkEmail(String email,String password){ return client.unlinkEmail(
UnlinkEmailRequest()(AccountEmail()..email=email..password=password));
}

ResponseFuture<void> deleteGroup(String groupId){ return client.deleteGroup(
DeleteGroupRequest()..groupId=groupId);
}

ResponseFuture<void> updateGroup(String groupId,String langTag,String avatarUrl,bool open,String groupId,String name,String description){ return client.updateGroup(
UpdateGroupRequest()..groupId=groupId(UpdateGroupRequest()..langTag=langTag..avatarUrl=avatarUrl..open=getBool(open)..groupId=groupId..name=name..description=description));
}

ResponseFuture<Session> authenticateFacebook(String token,bool create,String username,bool sync){ return client.authenticateFacebook(
AuthenticateFacebookRequest()(AccountFacebook()..token=token)..create=getBool(create)..username=username..sync=getBool(sync));
}

ResponseFuture<Session> authenticateGameCenter(String timestampSeconds,String salt,String signature,String publicKeyUrl,String playerId,String bundleId,bool create,String username){ return client.authenticateGameCenter(
AuthenticateGameCenterRequest()(AccountGameCenter()..timestampSeconds=timestampSeconds..salt=salt..signature=signature..publicKeyUrl=publicKeyUrl..playerId=playerId..bundleId=bundleId)..create=getBool(create)..username=username);
}

ResponseFuture<void> linkCustom(String id){ return client.linkCustom(
LinkCustomRequest()(AccountCustom()..id=id));
}

ResponseFuture<void> linkEmail(String email,String password){ return client.linkEmail(
LinkEmailRequest()(AccountEmail()..email=email..password=password));
}

ResponseFuture<void> linkGameCenter(String publicKeyUrl,String playerId,String bundleId,String timestampSeconds,String salt,String signature){ return client.linkGameCenter(
LinkGameCenterRequest()(AccountGameCenter()..publicKeyUrl=publicKeyUrl..playerId=playerId..bundleId=bundleId..timestampSeconds=timestampSeconds..salt=salt..signature=signature));
}

ResponseFuture<void> unlinkCustom(String id){ return client.unlinkCustom(
UnlinkCustomRequest()(AccountCustom()..id=id));
}

ResponseFuture<void> addGroupUsers(String groupId,List<String> userIds){ return client.addGroupUsers(
AddGroupUsersRequest()..groupId=groupId..userIds.addAll(userIds));
}

ResponseFuture<void> joinGroup(String groupId){ return client.joinGroup(
JoinGroupRequest()..groupId=groupId);
}

ResponseFuture<void> promoteGroupUsers(String groupId,List<String> userIds){ return client.promoteGroupUsers(
PromoteGroupUsersRequest()..groupId=groupId..userIds.addAll(userIds));
}

ResponseFuture<void> unlinkFacebook(String token){ return client.unlinkFacebook(
UnlinkFacebookRequest()(AccountFacebook()..token=token));
}

ResponseFuture<void> unlinkSteam(String token){ return client.unlinkSteam(
UnlinkSteamRequest()(AccountSteam()..token=token));
}

ResponseFuture<FriendList> listFriends( limit, state,String cursor){ return client.listFriends(
ListFriendsRequest()..limit=getInt32(limit)..state=getInt32(state)..cursor=cursor);
}

ResponseFuture<void> deleteFriends(List<String> ids,List<String> usernames){ return client.deleteFriends(
DeleteFriendsRequest()..ids.addAll(ids)..usernames.addAll(usernames));
}

ResponseFuture<void> addFriends(List<String> ids,List<String> usernames){ return client.addFriends(
AddFriendsRequest()..ids.addAll(ids)..usernames.addAll(usernames));
}

ResponseFuture<GroupList> listGroups(String name,String cursor, limit){ return client.listGroups(
ListGroupsRequest()..name=name..cursor=cursor..limit=getInt32(limit));
}

ResponseFuture<Group> createGroup(String langTag,String avatarUrl,bool open, maxCount,String name,String description){ return client.createGroup(
CreateGroupRequest()(CreateGroupRequest()..langTag=langTag..avatarUrl=avatarUrl..open=getBool(open)..maxCount=getInt32(maxCount)..name=name..description=description));
}

ResponseFuture<void> deleteLeaderboardRecord(String leaderboardId){ return client.deleteLeaderboardRecord(
DeleteLeaderboardRecordRequest()..leaderboardId=leaderboardId);
}

ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(String leaderboardId,String score,String subscore,String metadata){ return client.writeLeaderboardRecord(
WriteLeaderboardRecordRequest()..leaderboardId=leaderboardId(teLeaderboardRecordRequestLeaderboardRecordWrite()..score=score..subscore=subscore..metadata=metadata));
}

ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(String leaderboardId,List<String> ownerIds, limit,String cursor,String expiry){ return client.listLeaderboardRecords(
ListLeaderboardRecordsRequest()..leaderboardId=leaderboardId..ownerIds.addAll(ownerIds)..limit=getInt32(limit)..cursor=cursor..expiry=expiry);
}

ResponseFuture<Rpc> rpcFunc2(String id,String payload,String httpKey){ return client.rpcFunc2(
RpcFunc2Request()..id=id..payload=payload..httpKey=httpKey);
}

ResponseFuture<Rpc> rpcFunc(String id,unknown: body){ return client.rpcFunc(
RpcFuncRequest()..id=id..body=body);
}

ResponseFuture<UserGroupList> listUserGroups(String userId, limit, state,String cursor){ return client.listUserGroups(
ListUserGroupsRequest()..userId=userId..limit=getInt32(limit)..state=getInt32(state)..cursor=cursor);
}

ResponseFuture<void> unlinkGameCenter(String signature,String publicKeyUrl,String playerId,String bundleId,String timestampSeconds,String salt){ return client.unlinkGameCenter(
UnlinkGameCenterRequest()(AccountGameCenter()..signature=signature..publicKeyUrl=publicKeyUrl..playerId=playerId..bundleId=bundleId..timestampSeconds=timestampSeconds..salt=salt));
}

ResponseFuture<void> unlinkGoogle(String token){ return client.unlinkGoogle(
UnlinkGoogleRequest()(AccountGoogle()..token=token));
}

ResponseFuture<ChannelMessageList> listChannelMessages(String channelId, limit,bool forward,String cursor){ return client.listChannelMessages(
ListChannelMessagesRequest()..channelId=channelId..limit=getInt32(limit)..forward=getBool(forward)..cursor=cursor);
}

ResponseFuture<void> blockFriends(List<String> ids,List<String> usernames){ return client.blockFriends(
BlockFriendsRequest()..ids.addAll(ids)..usernames.addAll(usernames));
}

ResponseFuture<StorageObjectList> listStorageObjects2(String collection,String userId, limit,String cursor){ return client.listStorageObjects2(
ListStorageObjects2Request()..collection=collection..userId=userId..limit=getInt32(limit)..cursor=cursor);
}

ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(String tournamentId,String ownerId, limit,String expiry){ return client.listTournamentRecordsAroundOwner(
ListTournamentRecordsAroundOwnerRequest()..tournamentId=tournamentId..ownerId=ownerId..limit=getInt64(limit)..expiry=expiry);
}


