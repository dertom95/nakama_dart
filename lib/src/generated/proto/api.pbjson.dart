///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.User', '10': 'user'},
    const {'1': 'wallet', '3': 2, '4': 1, '5': 9, '10': 'wallet'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'devices', '3': 4, '4': 3, '5': 11, '6': '.nakama.api.AccountDevice', '10': 'devices'},
    const {'1': 'custom_id', '3': 5, '4': 1, '5': 9, '10': 'customId'},
    const {'1': 'verify_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'verifyTime'},
  ],
};

const AccountCustom$json = const {
  '1': 'AccountCustom',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'vars', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.AccountCustom.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountCustom_VarsEntry$json],
};

const AccountCustom_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AccountDevice$json = const {
  '1': 'AccountDevice',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'vars', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.AccountDevice.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountDevice_VarsEntry$json],
};

const AccountDevice_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AccountEmail$json = const {
  '1': 'AccountEmail',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'vars', '3': 3, '4': 3, '5': 11, '6': '.nakama.api.AccountEmail.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountEmail_VarsEntry$json],
};

const AccountEmail_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AccountFacebook$json = const {
  '1': 'AccountFacebook',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'vars', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.AccountFacebook.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountFacebook_VarsEntry$json],
};

const AccountFacebook_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AccountGameCenter$json = const {
  '1': 'AccountGameCenter',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'bundle_id', '3': 2, '4': 1, '5': 9, '10': 'bundleId'},
    const {'1': 'timestamp_seconds', '3': 3, '4': 1, '5': 3, '10': 'timestampSeconds'},
    const {'1': 'salt', '3': 4, '4': 1, '5': 9, '10': 'salt'},
    const {'1': 'signature', '3': 5, '4': 1, '5': 9, '10': 'signature'},
    const {'1': 'public_key_url', '3': 6, '4': 1, '5': 9, '10': 'publicKeyUrl'},
    const {'1': 'vars', '3': 7, '4': 3, '5': 11, '6': '.nakama.api.AccountGameCenter.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountGameCenter_VarsEntry$json],
};

const AccountGameCenter_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AccountGoogle$json = const {
  '1': 'AccountGoogle',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'vars', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.AccountGoogle.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountGoogle_VarsEntry$json],
};

const AccountGoogle_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AccountSteam$json = const {
  '1': 'AccountSteam',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'vars', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.AccountSteam.VarsEntry', '10': 'vars'},
  ],
  '3': const [AccountSteam_VarsEntry$json],
};

const AccountSteam_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AddFriendsRequest$json = const {
  '1': 'AddFriendsRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
    const {'1': 'usernames', '3': 2, '4': 3, '5': 9, '10': 'usernames'},
  ],
};

const AddGroupUsersRequest$json = const {
  '1': 'AddGroupUsersRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

const AuthenticateCustomRequest$json = const {
  '1': 'AuthenticateCustomRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountCustom', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const AuthenticateDeviceRequest$json = const {
  '1': 'AuthenticateDeviceRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountDevice', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const AuthenticateEmailRequest$json = const {
  '1': 'AuthenticateEmailRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountEmail', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const AuthenticateFacebookRequest$json = const {
  '1': 'AuthenticateFacebookRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountFacebook', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'sync', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'sync'},
  ],
};

const AuthenticateGameCenterRequest$json = const {
  '1': 'AuthenticateGameCenterRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountGameCenter', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const AuthenticateGoogleRequest$json = const {
  '1': 'AuthenticateGoogleRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountGoogle', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const AuthenticateSteamRequest$json = const {
  '1': 'AuthenticateSteamRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountSteam', '10': 'account'},
    const {'1': 'create', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'create'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const BlockFriendsRequest$json = const {
  '1': 'BlockFriendsRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
    const {'1': 'usernames', '3': 2, '4': 3, '5': 9, '10': 'usernames'},
  ],
};

const ChannelMessage$json = const {
  '1': 'ChannelMessage',
  '2': const [
    const {'1': 'channel_id', '3': 1, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'message_id', '3': 2, '4': 1, '5': 9, '10': 'messageId'},
    const {'1': 'code', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'code'},
    const {'1': 'sender_id', '3': 4, '4': 1, '5': 9, '10': 'senderId'},
    const {'1': 'username', '3': 5, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'create_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_time', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
    const {'1': 'persistent', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'persistent'},
    const {'1': 'room_name', '3': 10, '4': 1, '5': 9, '10': 'roomName'},
    const {'1': 'group_id', '3': 11, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'user_id_one', '3': 12, '4': 1, '5': 9, '10': 'userIdOne'},
    const {'1': 'user_id_two', '3': 13, '4': 1, '5': 9, '10': 'userIdTwo'},
  ],
};

const ChannelMessageList$json = const {
  '1': 'ChannelMessageList',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.ChannelMessage', '10': 'messages'},
    const {'1': 'next_cursor', '3': 2, '4': 1, '5': 9, '10': 'nextCursor'},
    const {'1': 'prev_cursor', '3': 3, '4': 1, '5': 9, '10': 'prevCursor'},
  ],
};

const CreateGroupRequest$json = const {
  '1': 'CreateGroupRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'lang_tag', '3': 3, '4': 1, '5': 9, '10': 'langTag'},
    const {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'open', '3': 5, '4': 1, '5': 8, '10': 'open'},
    const {'1': 'max_count', '3': 6, '4': 1, '5': 5, '10': 'maxCount'},
  ],
};

const DeleteFriendsRequest$json = const {
  '1': 'DeleteFriendsRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
    const {'1': 'usernames', '3': 2, '4': 3, '5': 9, '10': 'usernames'},
  ],
};

const DeleteGroupRequest$json = const {
  '1': 'DeleteGroupRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

const DeleteLeaderboardRecordRequest$json = const {
  '1': 'DeleteLeaderboardRecordRequest',
  '2': const [
    const {'1': 'leaderboard_id', '3': 1, '4': 1, '5': 9, '10': 'leaderboardId'},
  ],
};

const DeleteNotificationsRequest$json = const {
  '1': 'DeleteNotificationsRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
  ],
};

const DeleteStorageObjectId$json = const {
  '1': 'DeleteStorageObjectId',
  '2': const [
    const {'1': 'collection', '3': 1, '4': 1, '5': 9, '10': 'collection'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

const DeleteStorageObjectsRequest$json = const {
  '1': 'DeleteStorageObjectsRequest',
  '2': const [
    const {'1': 'object_ids', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.DeleteStorageObjectId', '10': 'objectIds'},
  ],
};

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'properties', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.Event.PropertiesEntry', '10': 'properties'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
  '3': const [Event_PropertiesEntry$json],
};

const Event_PropertiesEntry$json = const {
  '1': 'PropertiesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Friend$json = const {
  '1': 'Friend',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.User', '10': 'user'},
    const {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'state'},
  ],
  '4': const [Friend_State$json],
};

const Friend_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'FRIEND', '2': 0},
    const {'1': 'INVITE_SENT', '2': 1},
    const {'1': 'INVITE_RECEIVED', '2': 2},
    const {'1': 'BLOCKED', '2': 3},
  ],
};

const FriendList$json = const {
  '1': 'FriendList',
  '2': const [
    const {'1': 'friends', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.Friend', '10': 'friends'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const GetUsersRequest$json = const {
  '1': 'GetUsersRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
    const {'1': 'usernames', '3': 2, '4': 3, '5': 9, '10': 'usernames'},
    const {'1': 'facebook_ids', '3': 3, '4': 3, '5': 9, '10': 'facebookIds'},
  ],
};

const Group$json = const {
  '1': 'Group',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'creator_id', '3': 2, '4': 1, '5': 9, '10': 'creatorId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'lang_tag', '3': 5, '4': 1, '5': 9, '10': 'langTag'},
    const {'1': 'metadata', '3': 6, '4': 1, '5': 9, '10': 'metadata'},
    const {'1': 'avatar_url', '3': 7, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'open', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'open'},
    const {'1': 'edge_count', '3': 9, '4': 1, '5': 5, '10': 'edgeCount'},
    const {'1': 'max_count', '3': 10, '4': 1, '5': 5, '10': 'maxCount'},
    const {'1': 'create_time', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_time', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

const GroupList$json = const {
  '1': 'GroupList',
  '2': const [
    const {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.Group', '10': 'groups'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const GroupUserList$json = const {
  '1': 'GroupUserList',
  '2': const [
    const {'1': 'group_users', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.GroupUserList.GroupUser', '10': 'groupUsers'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
  ],
  '3': const [GroupUserList_GroupUser$json],
};

const GroupUserList_GroupUser$json = const {
  '1': 'GroupUser',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.User', '10': 'user'},
    const {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'state'},
  ],
  '4': const [GroupUserList_GroupUser_State$json],
};

const GroupUserList_GroupUser_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'SUPERADMIN', '2': 0},
    const {'1': 'ADMIN', '2': 1},
    const {'1': 'MEMBER', '2': 2},
    const {'1': 'JOIN_REQUEST', '2': 3},
  ],
};

const ImportFacebookFriendsRequest$json = const {
  '1': 'ImportFacebookFriendsRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountFacebook', '10': 'account'},
    const {'1': 'reset', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'reset'},
  ],
};

const JoinGroupRequest$json = const {
  '1': 'JoinGroupRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

const JoinTournamentRequest$json = const {
  '1': 'JoinTournamentRequest',
  '2': const [
    const {'1': 'tournament_id', '3': 1, '4': 1, '5': 9, '10': 'tournamentId'},
  ],
};

const KickGroupUsersRequest$json = const {
  '1': 'KickGroupUsersRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

const LeaderboardRecord$json = const {
  '1': 'LeaderboardRecord',
  '2': const [
    const {'1': 'leaderboard_id', '3': 1, '4': 1, '5': 9, '10': 'leaderboardId'},
    const {'1': 'owner_id', '3': 2, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'username', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'username'},
    const {'1': 'score', '3': 4, '4': 1, '5': 3, '10': 'score'},
    const {'1': 'subscore', '3': 5, '4': 1, '5': 3, '10': 'subscore'},
    const {'1': 'num_score', '3': 6, '4': 1, '5': 5, '10': 'numScore'},
    const {'1': 'metadata', '3': 7, '4': 1, '5': 9, '10': 'metadata'},
    const {'1': 'create_time', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
    const {'1': 'expiry_time', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiryTime'},
    const {'1': 'rank', '3': 11, '4': 1, '5': 3, '10': 'rank'},
    const {'1': 'max_num_score', '3': 12, '4': 1, '5': 13, '10': 'maxNumScore'},
  ],
};

const LeaderboardRecordList$json = const {
  '1': 'LeaderboardRecordList',
  '2': const [
    const {'1': 'records', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.LeaderboardRecord', '10': 'records'},
    const {'1': 'owner_records', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.LeaderboardRecord', '10': 'ownerRecords'},
    const {'1': 'next_cursor', '3': 3, '4': 1, '5': 9, '10': 'nextCursor'},
    const {'1': 'prev_cursor', '3': 4, '4': 1, '5': 9, '10': 'prevCursor'},
  ],
};

const LeaveGroupRequest$json = const {
  '1': 'LeaveGroupRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

const LinkFacebookRequest$json = const {
  '1': 'LinkFacebookRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.AccountFacebook', '10': 'account'},
    const {'1': 'sync', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'sync'},
  ],
};

const ListChannelMessagesRequest$json = const {
  '1': 'ListChannelMessagesRequest',
  '2': const [
    const {'1': 'channel_id', '3': 1, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'forward', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'forward'},
    const {'1': 'cursor', '3': 4, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const ListFriendsRequest$json = const {
  '1': 'ListFriendsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'state'},
    const {'1': 'cursor', '3': 3, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const ListGroupsRequest$json = const {
  '1': 'ListGroupsRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
  ],
};

const ListGroupUsersRequest$json = const {
  '1': 'ListGroupUsersRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'state', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'state'},
    const {'1': 'cursor', '3': 4, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const ListLeaderboardRecordsAroundOwnerRequest$json = const {
  '1': 'ListLeaderboardRecordsAroundOwnerRequest',
  '2': const [
    const {'1': 'leaderboard_id', '3': 1, '4': 1, '5': 9, '10': 'leaderboardId'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.UInt32Value', '10': 'limit'},
    const {'1': 'owner_id', '3': 3, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'expiry', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Int64Value', '10': 'expiry'},
  ],
};

const ListLeaderboardRecordsRequest$json = const {
  '1': 'ListLeaderboardRecordsRequest',
  '2': const [
    const {'1': 'leaderboard_id', '3': 1, '4': 1, '5': 9, '10': 'leaderboardId'},
    const {'1': 'owner_ids', '3': 2, '4': 3, '5': 9, '10': 'ownerIds'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'cursor', '3': 4, '4': 1, '5': 9, '10': 'cursor'},
    const {'1': 'expiry', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Int64Value', '10': 'expiry'},
  ],
};

const ListMatchesRequest$json = const {
  '1': 'ListMatchesRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'authoritative', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'authoritative'},
    const {'1': 'label', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'label'},
    const {'1': 'min_size', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'minSize'},
    const {'1': 'max_size', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'maxSize'},
    const {'1': 'query', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'query'},
  ],
};

const ListNotificationsRequest$json = const {
  '1': 'ListNotificationsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'cacheable_cursor', '3': 2, '4': 1, '5': 9, '10': 'cacheableCursor'},
  ],
};

const ListStorageObjectsRequest$json = const {
  '1': 'ListStorageObjectsRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'cursor', '3': 4, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const ListTournamentRecordsAroundOwnerRequest$json = const {
  '1': 'ListTournamentRecordsAroundOwnerRequest',
  '2': const [
    const {'1': 'tournament_id', '3': 1, '4': 1, '5': 9, '10': 'tournamentId'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.UInt32Value', '10': 'limit'},
    const {'1': 'owner_id', '3': 3, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'expiry', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Int64Value', '10': 'expiry'},
  ],
};

const ListTournamentRecordsRequest$json = const {
  '1': 'ListTournamentRecordsRequest',
  '2': const [
    const {'1': 'tournament_id', '3': 1, '4': 1, '5': 9, '10': 'tournamentId'},
    const {'1': 'owner_ids', '3': 2, '4': 3, '5': 9, '10': 'ownerIds'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'cursor', '3': 4, '4': 1, '5': 9, '10': 'cursor'},
    const {'1': 'expiry', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Int64Value', '10': 'expiry'},
  ],
};

const ListTournamentsRequest$json = const {
  '1': 'ListTournamentsRequest',
  '2': const [
    const {'1': 'category_start', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.UInt32Value', '10': 'categoryStart'},
    const {'1': 'category_end', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.UInt32Value', '10': 'categoryEnd'},
    const {'1': 'start_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.UInt32Value', '10': 'startTime'},
    const {'1': 'end_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.UInt32Value', '10': 'endTime'},
    const {'1': 'limit', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'cursor', '3': 8, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const ListUserGroupsRequest$json = const {
  '1': 'ListUserGroupsRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'limit'},
    const {'1': 'state', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'state'},
    const {'1': 'cursor', '3': 4, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const Match$json = const {
  '1': 'Match',
  '2': const [
    const {'1': 'match_id', '3': 1, '4': 1, '5': 9, '10': 'matchId'},
    const {'1': 'authoritative', '3': 2, '4': 1, '5': 8, '10': 'authoritative'},
    const {'1': 'label', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'label'},
    const {'1': 'size', '3': 4, '4': 1, '5': 5, '10': 'size'},
  ],
};

const MatchList$json = const {
  '1': 'MatchList',
  '2': const [
    const {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.Match', '10': 'matches'},
  ],
};

const Notification$json = const {
  '1': 'Notification',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'subject', '3': 2, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'code', '3': 4, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'sender_id', '3': 5, '4': 1, '5': 9, '10': 'senderId'},
    const {'1': 'create_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'persistent', '3': 7, '4': 1, '5': 8, '10': 'persistent'},
  ],
};

const NotificationList$json = const {
  '1': 'NotificationList',
  '2': const [
    const {'1': 'notifications', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.Notification', '10': 'notifications'},
    const {'1': 'cacheable_cursor', '3': 2, '4': 1, '5': 9, '10': 'cacheableCursor'},
  ],
};

const PromoteGroupUsersRequest$json = const {
  '1': 'PromoteGroupUsersRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

const ReadStorageObjectId$json = const {
  '1': 'ReadStorageObjectId',
  '2': const [
    const {'1': 'collection', '3': 1, '4': 1, '5': 9, '10': 'collection'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const ReadStorageObjectsRequest$json = const {
  '1': 'ReadStorageObjectsRequest',
  '2': const [
    const {'1': 'object_ids', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.ReadStorageObjectId', '10': 'objectIds'},
  ],
};

const Rpc$json = const {
  '1': 'Rpc',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 9, '10': 'payload'},
    const {'1': 'http_key', '3': 3, '4': 1, '5': 9, '10': 'httpKey'},
  ],
};

const Session$json = const {
  '1': 'Session',
  '2': const [
    const {'1': 'created', '3': 1, '4': 1, '5': 8, '10': 'created'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const StorageObject$json = const {
  '1': 'StorageObject',
  '2': const [
    const {'1': 'collection', '3': 1, '4': 1, '5': 9, '10': 'collection'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'value', '3': 4, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'permission_read', '3': 6, '4': 1, '5': 5, '10': 'permissionRead'},
    const {'1': 'permission_write', '3': 7, '4': 1, '5': 5, '10': 'permissionWrite'},
    const {'1': 'create_time', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

const StorageObjectAck$json = const {
  '1': 'StorageObjectAck',
  '2': const [
    const {'1': 'collection', '3': 1, '4': 1, '5': 9, '10': 'collection'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const StorageObjectAcks$json = const {
  '1': 'StorageObjectAcks',
  '2': const [
    const {'1': 'acks', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.StorageObjectAck', '10': 'acks'},
  ],
};

const StorageObjects$json = const {
  '1': 'StorageObjects',
  '2': const [
    const {'1': 'objects', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.StorageObject', '10': 'objects'},
  ],
};

const StorageObjectList$json = const {
  '1': 'StorageObjectList',
  '2': const [
    const {'1': 'objects', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.StorageObject', '10': 'objects'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const Tournament$json = const {
  '1': 'Tournament',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'category', '3': 4, '4': 1, '5': 13, '10': 'category'},
    const {'1': 'sort_order', '3': 5, '4': 1, '5': 13, '10': 'sortOrder'},
    const {'1': 'size', '3': 6, '4': 1, '5': 13, '10': 'size'},
    const {'1': 'max_size', '3': 7, '4': 1, '5': 13, '10': 'maxSize'},
    const {'1': 'max_num_score', '3': 8, '4': 1, '5': 13, '10': 'maxNumScore'},
    const {'1': 'can_enter', '3': 9, '4': 1, '5': 8, '10': 'canEnter'},
    const {'1': 'end_active', '3': 10, '4': 1, '5': 13, '10': 'endActive'},
    const {'1': 'next_reset', '3': 11, '4': 1, '5': 13, '10': 'nextReset'},
    const {'1': 'metadata', '3': 12, '4': 1, '5': 9, '10': 'metadata'},
    const {'1': 'create_time', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'start_time', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startTime'},
    const {'1': 'end_time', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endTime'},
    const {'1': 'duration', '3': 16, '4': 1, '5': 13, '10': 'duration'},
    const {'1': 'start_active', '3': 17, '4': 1, '5': 13, '10': 'startActive'},
  ],
};

const TournamentList$json = const {
  '1': 'TournamentList',
  '2': const [
    const {'1': 'tournaments', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.Tournament', '10': 'tournaments'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
  ],
};

const TournamentRecordList$json = const {
  '1': 'TournamentRecordList',
  '2': const [
    const {'1': 'records', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.LeaderboardRecord', '10': 'records'},
    const {'1': 'owner_records', '3': 2, '4': 3, '5': 11, '6': '.nakama.api.LeaderboardRecord', '10': 'ownerRecords'},
    const {'1': 'next_cursor', '3': 3, '4': 1, '5': 9, '10': 'nextCursor'},
    const {'1': 'prev_cursor', '3': 4, '4': 1, '5': 9, '10': 'prevCursor'},
  ],
};

const UpdateAccountRequest$json = const {
  '1': 'UpdateAccountRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'username'},
    const {'1': 'display_name', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'displayName'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'avatarUrl'},
    const {'1': 'lang_tag', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'langTag'},
    const {'1': 'location', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'location'},
    const {'1': 'timezone', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'timezone'},
  ],
};

const UpdateGroupRequest$json = const {
  '1': 'UpdateGroupRequest',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'description'},
    const {'1': 'lang_tag', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'langTag'},
    const {'1': 'avatar_url', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'avatarUrl'},
    const {'1': 'open', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'open'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'lang_tag', '3': 5, '4': 1, '5': 9, '10': 'langTag'},
    const {'1': 'location', '3': 6, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'timezone', '3': 7, '4': 1, '5': 9, '10': 'timezone'},
    const {'1': 'metadata', '3': 8, '4': 1, '5': 9, '10': 'metadata'},
    const {'1': 'facebook_id', '3': 9, '4': 1, '5': 9, '10': 'facebookId'},
    const {'1': 'google_id', '3': 10, '4': 1, '5': 9, '10': 'googleId'},
    const {'1': 'gamecenter_id', '3': 11, '4': 1, '5': 9, '10': 'gamecenterId'},
    const {'1': 'steam_id', '3': 12, '4': 1, '5': 9, '10': 'steamId'},
    const {'1': 'online', '3': 13, '4': 1, '5': 8, '10': 'online'},
    const {'1': 'edge_count', '3': 14, '4': 1, '5': 5, '10': 'edgeCount'},
    const {'1': 'create_time', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_time', '3': 16, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

const UserGroupList$json = const {
  '1': 'UserGroupList',
  '2': const [
    const {'1': 'user_groups', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.UserGroupList.UserGroup', '10': 'userGroups'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
  ],
  '3': const [UserGroupList_UserGroup$json],
};

const UserGroupList_UserGroup$json = const {
  '1': 'UserGroup',
  '2': const [
    const {'1': 'group', '3': 1, '4': 1, '5': 11, '6': '.nakama.api.Group', '10': 'group'},
    const {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'state'},
  ],
  '4': const [UserGroupList_UserGroup_State$json],
};

const UserGroupList_UserGroup_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'SUPERADMIN', '2': 0},
    const {'1': 'ADMIN', '2': 1},
    const {'1': 'MEMBER', '2': 2},
    const {'1': 'JOIN_REQUEST', '2': 3},
  ],
};

const Users$json = const {
  '1': 'Users',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.User', '10': 'users'},
  ],
};

const WriteLeaderboardRecordRequest$json = const {
  '1': 'WriteLeaderboardRecordRequest',
  '2': const [
    const {'1': 'leaderboard_id', '3': 1, '4': 1, '5': 9, '10': 'leaderboardId'},
    const {'1': 'record', '3': 2, '4': 1, '5': 11, '6': '.nakama.api.WriteLeaderboardRecordRequest.LeaderboardRecordWrite', '10': 'record'},
  ],
  '3': const [WriteLeaderboardRecordRequest_LeaderboardRecordWrite$json],
};

const WriteLeaderboardRecordRequest_LeaderboardRecordWrite$json = const {
  '1': 'LeaderboardRecordWrite',
  '2': const [
    const {'1': 'score', '3': 1, '4': 1, '5': 3, '10': 'score'},
    const {'1': 'subscore', '3': 2, '4': 1, '5': 3, '10': 'subscore'},
    const {'1': 'metadata', '3': 3, '4': 1, '5': 9, '10': 'metadata'},
  ],
};

const WriteStorageObject$json = const {
  '1': 'WriteStorageObject',
  '2': const [
    const {'1': 'collection', '3': 1, '4': 1, '5': 9, '10': 'collection'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'permission_read', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'permissionRead'},
    const {'1': 'permission_write', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'permissionWrite'},
  ],
};

const WriteStorageObjectsRequest$json = const {
  '1': 'WriteStorageObjectsRequest',
  '2': const [
    const {'1': 'objects', '3': 1, '4': 3, '5': 11, '6': '.nakama.api.WriteStorageObject', '10': 'objects'},
  ],
};

const WriteTournamentRecordRequest$json = const {
  '1': 'WriteTournamentRecordRequest',
  '2': const [
    const {'1': 'tournament_id', '3': 1, '4': 1, '5': 9, '10': 'tournamentId'},
    const {'1': 'record', '3': 2, '4': 1, '5': 11, '6': '.nakama.api.WriteTournamentRecordRequest.TournamentRecordWrite', '10': 'record'},
  ],
  '3': const [WriteTournamentRecordRequest_TournamentRecordWrite$json],
};

const WriteTournamentRecordRequest_TournamentRecordWrite$json = const {
  '1': 'TournamentRecordWrite',
  '2': const [
    const {'1': 'score', '3': 1, '4': 1, '5': 3, '10': 'score'},
    const {'1': 'subscore', '3': 2, '4': 1, '5': 3, '10': 'subscore'},
    const {'1': 'metadata', '3': 3, '4': 1, '5': 9, '10': 'metadata'},
  ],
};

