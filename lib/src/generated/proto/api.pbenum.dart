///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Friend_State extends $pb.ProtobufEnum {
  static const Friend_State FRIEND = Friend_State._(0, 'FRIEND');
  static const Friend_State INVITE_SENT = Friend_State._(1, 'INVITE_SENT');
  static const Friend_State INVITE_RECEIVED = Friend_State._(2, 'INVITE_RECEIVED');
  static const Friend_State BLOCKED = Friend_State._(3, 'BLOCKED');

  static const $core.List<Friend_State> values = <Friend_State> [
    FRIEND,
    INVITE_SENT,
    INVITE_RECEIVED,
    BLOCKED,
  ];

  static final $core.Map<$core.int, Friend_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Friend_State valueOf($core.int value) => _byValue[value];

  const Friend_State._($core.int v, $core.String n) : super(v, n);
}

class GroupUserList_GroupUser_State extends $pb.ProtobufEnum {
  static const GroupUserList_GroupUser_State SUPERADMIN = GroupUserList_GroupUser_State._(0, 'SUPERADMIN');
  static const GroupUserList_GroupUser_State ADMIN = GroupUserList_GroupUser_State._(1, 'ADMIN');
  static const GroupUserList_GroupUser_State MEMBER = GroupUserList_GroupUser_State._(2, 'MEMBER');
  static const GroupUserList_GroupUser_State JOIN_REQUEST = GroupUserList_GroupUser_State._(3, 'JOIN_REQUEST');

  static const $core.List<GroupUserList_GroupUser_State> values = <GroupUserList_GroupUser_State> [
    SUPERADMIN,
    ADMIN,
    MEMBER,
    JOIN_REQUEST,
  ];

  static final $core.Map<$core.int, GroupUserList_GroupUser_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GroupUserList_GroupUser_State valueOf($core.int value) => _byValue[value];

  const GroupUserList_GroupUser_State._($core.int v, $core.String n) : super(v, n);
}

class UserGroupList_UserGroup_State extends $pb.ProtobufEnum {
  static const UserGroupList_UserGroup_State SUPERADMIN = UserGroupList_UserGroup_State._(0, 'SUPERADMIN');
  static const UserGroupList_UserGroup_State ADMIN = UserGroupList_UserGroup_State._(1, 'ADMIN');
  static const UserGroupList_UserGroup_State MEMBER = UserGroupList_UserGroup_State._(2, 'MEMBER');
  static const UserGroupList_UserGroup_State JOIN_REQUEST = UserGroupList_UserGroup_State._(3, 'JOIN_REQUEST');

  static const $core.List<UserGroupList_UserGroup_State> values = <UserGroupList_UserGroup_State> [
    SUPERADMIN,
    ADMIN,
    MEMBER,
    JOIN_REQUEST,
  ];

  static final $core.Map<$core.int, UserGroupList_UserGroup_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserGroupList_UserGroup_State valueOf($core.int value) => _byValue[value];

  const UserGroupList_UserGroup_State._($core.int v, $core.String n) : super(v, n);
}

