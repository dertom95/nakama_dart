
import 'package:nakama_client/src/generated/proto/api.pb.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';

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

	ResponseFuture<Account> getAccount(){ return client.getAccount(
GetAccountRequest());
}

ResponseFuture<void> updateAccount(String timezone,String username,String displayName,String avatarUrl,String langTag,String location){ return client.updateAccount(
UpdateAccountRequest()(UpdateAccountRequest()..timezone=timezone..username=username..displayName=displayName..avatarUrl=avatarUrl..langTag=langTag..location=location));
}

ResponseFuture<Session> authenticateCustom(String id,bool create,String username){ return client.authenticateCustom(
AuthenticateCustomRequest()(AccountCustom()..id=id)..create=getBool(create)..username=username);
}

ResponseFuture<Session> authenticateGameCenter(String bundleId,String timestampSeconds,String salt,String signature,String publicKeyUrl,String playerId,bool create,String username){ return client.authenticateGameCenter(
AuthenticateGameCenterRequest()(AccountGameCenter()..bundleId=bundleId..timestampSeconds=timestampSeconds..salt=salt..signature=signature..publicKeyUrl=publicKeyUrl..playerId=playerId)..create=getBool(create)..username=username);
}

ResponseFuture<void> unlinkDevice(String id){ return client.unlinkDevice(
UnlinkDeviceRequest()(AccountDevice()..id=id));
}

ResponseFuture<void> blockFriends(List<String> ids,List<String> usernames){ return client.blockFriends(
BlockFriendsRequest()..ids.addAll(ids)..usernames.addAll(usernames));
}

ResponseFuture<LeaderboardRecordList> listLeaderboardRecords(String leaderboardId,List<String> ownerIds, limit,String cursor,String expiry){ return client.listLeaderboardRecords(
ListLeaderboardRecordsRequest()..leaderboardId=leaderboardId..ownerIds.addAll(ownerIds)..limit=getInt32(limit)..cursor=cursor..expiry=expiry);
}

ResponseFuture<void> deleteLeaderboardRecord(String leaderboardId){ return client.deleteLeaderboardRecord(
DeleteLeaderboardRecordRequest()..leaderboardId=leaderboardId);
}

ResponseFuture<LeaderboardRecord> writeLeaderboardRecord(String leaderboardId,String score,String subscore,String metadata){ return client.writeLeaderboardRecord(
WriteLeaderboardRecordRequest()..leaderboardId=leaderboardId(teLeaderboardRecordRequestLeaderboardRecordWrite()..score=score..subscore=subscore..metadata=metadata));
}

ResponseFuture<void> joinTournament(String tournamentId){ return client.joinTournament(
JoinTournamentRequest()..tournamentId=tournamentId);
}

ResponseFuture<void> importFacebookFriends(String token,bool reset){ return client.importFacebookFriends(
ImportFacebookFriendsRequest()(AccountFacebook()..token=token)..reset=getBool(reset));
}

ResponseFuture<void> deleteNotifications(List<String> ids){ return client.deleteNotifications(
DeleteNotificationsRequest()..ids.addAll(ids));
}

ResponseFuture<NotificationList> listNotifications( limit,String cacheableCursor){ return client.listNotifications(
ListNotificationsRequest()..limit=getInt32(limit)..cacheableCursor=cacheableCursor);
}

ResponseFuture<StorageObjectList> listStorageObjects(String collection,String userId, limit,String cursor){ return client.listStorageObjects(
ListStorageObjectsRequest()..collection=collection..userId=userId..limit=getInt32(limit)..cursor=cursor);
}

ResponseFuture<UserGroupList> listUserGroups(String userId, limit, state,String cursor){ return client.listUserGroups(
ListUserGroupsRequest()..userId=userId..limit=getInt32(limit)..state=getInt32(state)..cursor=cursor);
}

ResponseFuture<void> healthcheck(){ return client.healthcheck(
HealthcheckRequest());
}

ResponseFuture<Session> authenticateDevice(String id,bool create,String username){ return client.authenticateDevice(
AuthenticateDeviceRequest()(AccountDevice()..id=id)..create=getBool(create)..username=username);
}

ResponseFuture<void> linkFacebook(String token,bool sync){ return client.linkFacebook(
LinkFacebookRequest()(AccountFacebook()..token=token)..sync=getBool(sync));
}

ResponseFuture<void> unlinkGoogle(String token){ return client.unlinkGoogle(
UnlinkGoogleRequest()(AccountGoogle()..token=token));
}

ResponseFuture<void> unlinkSteam(String token){ return client.unlinkSteam(
UnlinkSteamRequest()(AccountSteam()..token=token));
}

ResponseFuture<void> deleteGroup(String groupId){ return client.deleteGroup(
DeleteGroupRequest()..groupId=groupId);
}

ResponseFuture<void> updateGroup(String groupId,bool open,String groupId,String name,String description,String langTag,String avatarUrl){ return client.updateGroup(
UpdateGroupRequest()..groupId=groupId(UpdateGroupRequest()..open=getBool(open)..groupId=groupId..name=name..description=description..langTag=langTag..avatarUrl=avatarUrl));
}

ResponseFuture<Rpc> rpcFunc2(String id,String payload,String httpKey){ return client.rpcFunc2(
RpcFunc2Request()..id=id..payload=payload..httpKey=httpKey);
}

ResponseFuture<Rpc> rpcFunc(String id,unknown: body){ return client.rpcFunc(
RpcFuncRequest()..id=id..body=body);
}

ResponseFuture<void> deleteStorageObjects(List<DeleteStorageObjectsRequest> objectIds){ return client.deleteStorageObjects(
DeleteStorageObjectsRequest()(DeleteStorageObjectsRequest()..objectIds.addAll(objectIds)));
}

ResponseFuture<Users> getUsers(List<String> ids,List<String> usernames,List<String> facebookIds){ return client.getUsers(
GetUsersRequest()..ids.addAll(ids)..usernames.addAll(usernames)..facebookIds.addAll(facebookIds));
}

ResponseFuture<Session> authenticateFacebook(String token,bool create,String username,bool sync){ return client.authenticateFacebook(
AuthenticateFacebookRequest()(AccountFacebook()..token=token)..create=getBool(create)..username=username..sync=getBool(sync));
}

ResponseFuture<void> linkGameCenter(String timestampSeconds,String salt,String signature,String publicKeyUrl,String playerId,String bundleId){ return client.linkGameCenter(
LinkGameCenterRequest()(AccountGameCenter()..timestampSeconds=timestampSeconds..salt=salt..signature=signature..publicKeyUrl=publicKeyUrl..playerId=playerId..bundleId=bundleId));
}

ResponseFuture<void> unlinkEmail(String password,String email){ return client.unlinkEmail(
UnlinkEmailRequest()(AccountEmail()..password=password..email=email));
}

ResponseFuture<void> unlinkGameCenter(String timestampSeconds,String salt,String signature,String publicKeyUrl,String playerId,String bundleId){ return client.unlinkGameCenter(
UnlinkGameCenterRequest()(AccountGameCenter()..timestampSeconds=timestampSeconds..salt=salt..signature=signature..publicKeyUrl=publicKeyUrl..playerId=playerId..bundleId=bundleId));
}

ResponseFuture<void> deleteFriends(List<String> ids,List<String> usernames){ return client.deleteFriends(
DeleteFriendsRequest()..ids.addAll(ids)..usernames.addAll(usernames));
}

ResponseFuture<void> addFriends(List<String> ids,List<String> usernames){ return client.addFriends(
AddFriendsRequest()..ids.addAll(ids)..usernames.addAll(usernames));
}

ResponseFuture<FriendList> listFriends( limit, state,String cursor){ return client.listFriends(
ListFriendsRequest()..limit=getInt32(limit)..state=getInt32(state)..cursor=cursor);
}

ResponseFuture<void> joinGroup(String groupId){ return client.joinGroup(
JoinGroupRequest()..groupId=groupId);
}

ResponseFuture<void> leaveGroup(String groupId){ return client.leaveGroup(
LeaveGroupRequest()..groupId=groupId);
}

ResponseFuture<StorageObjects> readStorageObjects(List<ReadStorageObjectsRequest> objectIds){ return client.readStorageObjects(
ReadStorageObjectsRequest()(ReadStorageObjectsRequest()..objectIds.addAll(objectIds)));
}

ResponseFuture<StorageObjectAcks> writeStorageObjects(List<WriteStorageObjectsRequest> objects){ return client.writeStorageObjects(
WriteStorageObjectsRequest()(WriteStorageObjectsRequest()..objects.addAll(objects)));
}

ResponseFuture<TournamentList> listTournaments( categoryStart, categoryEnd, startTime, endTime, limit,String cursor){ return client.listTournaments(
ListTournamentsRequest()..categoryStart=getInt64(categoryStart)..categoryEnd=getInt64(categoryEnd)..startTime=getInt64(startTime)..endTime=getInt64(endTime)..limit=getInt32(limit)..cursor=cursor);
}

ResponseFuture<Session> authenticateEmail(String email,String password,bool create,String username){ return client.authenticateEmail(
AuthenticateEmailRequest()(AccountEmail()..email=email..password=password)..create=getBool(create)..username=username);
}

ResponseFuture<Session> authenticateGoogle(String token,bool create,String username){ return client.authenticateGoogle(
AuthenticateGoogleRequest()(AccountGoogle()..token=token)..create=getBool(create)..username=username);
}

ResponseFuture<GroupList> listGroups(String name,String cursor, limit){ return client.listGroups(
ListGroupsRequest()..name=name..cursor=cursor..limit=getInt32(limit));
}

ResponseFuture<Group> createGroup(String avatarUrl,bool open, maxCount,String name,String description,String langTag){ return client.createGroup(
CreateGroupRequest()(CreateGroupRequest()..avatarUrl=avatarUrl..open=getBool(open)..maxCount=getInt32(maxCount)..name=name..description=description..langTag=langTag));
}

ResponseFuture<GroupUserList> listGroupUsers(String groupId, limit, state,String cursor){ return client.listGroupUsers(
ListGroupUsersRequest()..groupId=groupId..limit=getInt32(limit)..state=getInt32(state)..cursor=cursor);
}

ResponseFuture<void> linkCustom(String id){ return client.linkCustom(
LinkCustomRequest()(AccountCustom()..id=id));
}

ResponseFuture<void> linkDevice(String id){ return client.linkDevice(
LinkDeviceRequest()(AccountDevice()..id=id));
}

ResponseFuture<TournamentRecordList> listTournamentRecords(String tournamentId,List<String> ownerIds, limit,String cursor,String expiry){ return client.listTournamentRecords(
ListTournamentRecordsRequest()..tournamentId=tournamentId..ownerIds.addAll(ownerIds)..limit=getInt32(limit)..cursor=cursor..expiry=expiry);
}

ResponseFuture<LeaderboardRecord> writeTournamentRecord(String tournamentId,String score,String subscore,String metadata){ return client.writeTournamentRecord(
WriteTournamentRecordRequest()..tournamentId=tournamentId(teTournamentRecordRequestTournamentRecordWrite()..score=score..subscore=subscore..metadata=metadata));
}

ResponseFuture<TournamentRecordList> listTournamentRecordsAroundOwner(String tournamentId,String ownerId, limit,String expiry){ return client.listTournamentRecordsAroundOwner(
ListTournamentRecordsAroundOwnerRequest()..tournamentId=tournamentId..ownerId=ownerId..limit=getInt64(limit)..expiry=expiry);
}

ResponseFuture<void> linkGoogle(String token){ return client.linkGoogle(
LinkGoogleRequest()(AccountGoogle()..token=token));
}

ResponseFuture<void> linkSteam(String token){ return client.linkSteam(
LinkSteamRequest()(AccountSteam()..token=token));
}

ResponseFuture<void> unlinkFacebook(String token){ return client.unlinkFacebook(
UnlinkFacebookRequest()(AccountFacebook()..token=token));
}

ResponseFuture<void> kickGroupUsers(String groupId,List<String> userIds){ return client.kickGroupUsers(
KickGroupUsersRequest()..groupId=groupId..userIds.addAll(userIds));
}

ResponseFuture<LeaderboardRecordList> listLeaderboardRecordsAroundOwner(String leaderboardId,String ownerId, limit,String expiry){ return client.listLeaderboardRecordsAroundOwner(
ListLeaderboardRecordsAroundOwnerRequest()..leaderboardId=leaderboardId..ownerId=ownerId..limit=getInt64(limit)..expiry=expiry);
}

ResponseFuture<MatchList> listMatches( limit,bool authoritative,String label, minSize, maxSize,String query){ return client.listMatches(
ListMatchesRequest()..limit=getInt32(limit)..authoritative=getBool(authoritative)..label=label..minSize=getInt32(minSize)..maxSize=getInt32(maxSize)..query=query);
}

ResponseFuture<StorageObjectList> listStorageObjects2(String collection,String userId, limit,String cursor){ return client.listStorageObjects2(
ListStorageObjects2Request()..collection=collection..userId=userId..limit=getInt32(limit)..cursor=cursor);
}

ResponseFuture<Session> authenticateSteam(String token,bool create,String username){ return client.authenticateSteam(
AuthenticateSteamRequest()(AccountSteam()..token=token)..create=getBool(create)..username=username);
}

ResponseFuture<void> linkEmail(String email,String password){ return client.linkEmail(
LinkEmailRequest()(AccountEmail()..email=email..password=password));
}

ResponseFuture<void> unlinkCustom(String id){ return client.unlinkCustom(
UnlinkCustomRequest()(AccountCustom()..id=id));
}

ResponseFuture<ChannelMessageList> listChannelMessages(String channelId, limit,bool forward,String cursor){ return client.listChannelMessages(
ListChannelMessagesRequest()..channelId=channelId..limit=getInt32(limit)..forward=getBool(forward)..cursor=cursor);
}

ResponseFuture<void> addGroupUsers(String groupId,List<String> userIds){ return client.addGroupUsers(
AddGroupUsersRequest()..groupId=groupId..userIds.addAll(userIds));
}

ResponseFuture<void> promoteGroupUsers(String groupId,List<String> userIds){ return client.promoteGroupUsers(
PromoteGroupUsersRequest()..groupId=groupId..userIds.addAll(userIds));
}


	
	}
