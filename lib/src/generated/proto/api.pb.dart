///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;
import 'google/protobuf/wrappers.pb.dart' as $3;

export 'api.pbenum.dart';

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Account', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<User>(1, 'user', $pb.PbFieldType.OM, defaultOrMaker: User.getDefault, subBuilder: User.create)
    ..aOS(2, 'wallet')
    ..aOS(3, 'email')
    ..pc<AccountDevice>(4, 'devices', $pb.PbFieldType.PM, subBuilder: AccountDevice.create)
    ..aOS(5, 'customId')
    ..a<$2.Timestamp>(6, 'verifyTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account() => create();
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Account clone() => Account()..mergeFromMessage(this);
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  static Account getDefault() => _defaultInstance ??= create()..freeze();
  static Account _defaultInstance;

  User get user => $_getN(0);
  set user(User v) { setField(1, v); }
  $core.bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  $core.String get wallet => $_getS(1, '');
  set wallet($core.String v) { $_setString(1, v); }
  $core.bool hasWallet() => $_has(1);
  void clearWallet() => clearField(2);

  $core.String get email => $_getS(2, '');
  set email($core.String v) { $_setString(2, v); }
  $core.bool hasEmail() => $_has(2);
  void clearEmail() => clearField(3);

  $core.List<AccountDevice> get devices => $_getList(3);

  $core.String get customId => $_getS(4, '');
  set customId($core.String v) { $_setString(4, v); }
  $core.bool hasCustomId() => $_has(4);
  void clearCustomId() => clearField(5);

  $2.Timestamp get verifyTime => $_getN(5);
  set verifyTime($2.Timestamp v) { setField(6, v); }
  $core.bool hasVerifyTime() => $_has(5);
  void clearVerifyTime() => clearField(6);
}

class AccountCustom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountCustom', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..m<$core.String, $core.String>(2, 'vars', entryClassName: 'AccountCustom.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountCustom._() : super();
  factory AccountCustom() => create();
  factory AccountCustom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountCustom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountCustom clone() => AccountCustom()..mergeFromMessage(this);
  AccountCustom copyWith(void Function(AccountCustom) updates) => super.copyWith((message) => updates(message as AccountCustom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountCustom create() => AccountCustom._();
  AccountCustom createEmptyInstance() => create();
  static $pb.PbList<AccountCustom> createRepeated() => $pb.PbList<AccountCustom>();
  static AccountCustom getDefault() => _defaultInstance ??= create()..freeze();
  static AccountCustom _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.Map<$core.String, $core.String> get vars => $_getMap(1);
}

class AccountDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountDevice', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..m<$core.String, $core.String>(2, 'vars', entryClassName: 'AccountDevice.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountDevice._() : super();
  factory AccountDevice() => create();
  factory AccountDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountDevice clone() => AccountDevice()..mergeFromMessage(this);
  AccountDevice copyWith(void Function(AccountDevice) updates) => super.copyWith((message) => updates(message as AccountDevice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountDevice create() => AccountDevice._();
  AccountDevice createEmptyInstance() => create();
  static $pb.PbList<AccountDevice> createRepeated() => $pb.PbList<AccountDevice>();
  static AccountDevice getDefault() => _defaultInstance ??= create()..freeze();
  static AccountDevice _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.Map<$core.String, $core.String> get vars => $_getMap(1);
}

class AccountEmail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountEmail', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..m<$core.String, $core.String>(3, 'vars', entryClassName: 'AccountEmail.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountEmail._() : super();
  factory AccountEmail() => create();
  factory AccountEmail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountEmail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountEmail clone() => AccountEmail()..mergeFromMessage(this);
  AccountEmail copyWith(void Function(AccountEmail) updates) => super.copyWith((message) => updates(message as AccountEmail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountEmail create() => AccountEmail._();
  AccountEmail createEmptyInstance() => create();
  static $pb.PbList<AccountEmail> createRepeated() => $pb.PbList<AccountEmail>();
  static AccountEmail getDefault() => _defaultInstance ??= create()..freeze();
  static AccountEmail _defaultInstance;

  $core.String get email => $_getS(0, '');
  set email($core.String v) { $_setString(0, v); }
  $core.bool hasEmail() => $_has(0);
  void clearEmail() => clearField(1);

  $core.String get password => $_getS(1, '');
  set password($core.String v) { $_setString(1, v); }
  $core.bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);

  $core.Map<$core.String, $core.String> get vars => $_getMap(2);
}

class AccountFacebook extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountFacebook', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..m<$core.String, $core.String>(2, 'vars', entryClassName: 'AccountFacebook.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountFacebook._() : super();
  factory AccountFacebook() => create();
  factory AccountFacebook.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountFacebook.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountFacebook clone() => AccountFacebook()..mergeFromMessage(this);
  AccountFacebook copyWith(void Function(AccountFacebook) updates) => super.copyWith((message) => updates(message as AccountFacebook));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountFacebook create() => AccountFacebook._();
  AccountFacebook createEmptyInstance() => create();
  static $pb.PbList<AccountFacebook> createRepeated() => $pb.PbList<AccountFacebook>();
  static AccountFacebook getDefault() => _defaultInstance ??= create()..freeze();
  static AccountFacebook _defaultInstance;

  $core.String get token => $_getS(0, '');
  set token($core.String v) { $_setString(0, v); }
  $core.bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  $core.Map<$core.String, $core.String> get vars => $_getMap(1);
}

class AccountGameCenter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountGameCenter', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'playerId')
    ..aOS(2, 'bundleId')
    ..aInt64(3, 'timestampSeconds')
    ..aOS(4, 'salt')
    ..aOS(5, 'signature')
    ..aOS(6, 'publicKeyUrl')
    ..m<$core.String, $core.String>(7, 'vars', entryClassName: 'AccountGameCenter.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountGameCenter._() : super();
  factory AccountGameCenter() => create();
  factory AccountGameCenter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountGameCenter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountGameCenter clone() => AccountGameCenter()..mergeFromMessage(this);
  AccountGameCenter copyWith(void Function(AccountGameCenter) updates) => super.copyWith((message) => updates(message as AccountGameCenter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountGameCenter create() => AccountGameCenter._();
  AccountGameCenter createEmptyInstance() => create();
  static $pb.PbList<AccountGameCenter> createRepeated() => $pb.PbList<AccountGameCenter>();
  static AccountGameCenter getDefault() => _defaultInstance ??= create()..freeze();
  static AccountGameCenter _defaultInstance;

  $core.String get playerId => $_getS(0, '');
  set playerId($core.String v) { $_setString(0, v); }
  $core.bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);

  $core.String get bundleId => $_getS(1, '');
  set bundleId($core.String v) { $_setString(1, v); }
  $core.bool hasBundleId() => $_has(1);
  void clearBundleId() => clearField(2);

  Int64 get timestampSeconds => $_getI64(2);
  set timestampSeconds(Int64 v) { $_setInt64(2, v); }
  $core.bool hasTimestampSeconds() => $_has(2);
  void clearTimestampSeconds() => clearField(3);

  $core.String get salt => $_getS(3, '');
  set salt($core.String v) { $_setString(3, v); }
  $core.bool hasSalt() => $_has(3);
  void clearSalt() => clearField(4);

  $core.String get signature => $_getS(4, '');
  set signature($core.String v) { $_setString(4, v); }
  $core.bool hasSignature() => $_has(4);
  void clearSignature() => clearField(5);

  $core.String get publicKeyUrl => $_getS(5, '');
  set publicKeyUrl($core.String v) { $_setString(5, v); }
  $core.bool hasPublicKeyUrl() => $_has(5);
  void clearPublicKeyUrl() => clearField(6);

  $core.Map<$core.String, $core.String> get vars => $_getMap(6);
}

class AccountGoogle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountGoogle', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..m<$core.String, $core.String>(2, 'vars', entryClassName: 'AccountGoogle.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountGoogle._() : super();
  factory AccountGoogle() => create();
  factory AccountGoogle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountGoogle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountGoogle clone() => AccountGoogle()..mergeFromMessage(this);
  AccountGoogle copyWith(void Function(AccountGoogle) updates) => super.copyWith((message) => updates(message as AccountGoogle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountGoogle create() => AccountGoogle._();
  AccountGoogle createEmptyInstance() => create();
  static $pb.PbList<AccountGoogle> createRepeated() => $pb.PbList<AccountGoogle>();
  static AccountGoogle getDefault() => _defaultInstance ??= create()..freeze();
  static AccountGoogle _defaultInstance;

  $core.String get token => $_getS(0, '');
  set token($core.String v) { $_setString(0, v); }
  $core.bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  $core.Map<$core.String, $core.String> get vars => $_getMap(1);
}

class AccountSteam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountSteam', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..m<$core.String, $core.String>(2, 'vars', entryClassName: 'AccountSteam.VarsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..hasRequiredFields = false
  ;

  AccountSteam._() : super();
  factory AccountSteam() => create();
  factory AccountSteam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSteam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountSteam clone() => AccountSteam()..mergeFromMessage(this);
  AccountSteam copyWith(void Function(AccountSteam) updates) => super.copyWith((message) => updates(message as AccountSteam));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSteam create() => AccountSteam._();
  AccountSteam createEmptyInstance() => create();
  static $pb.PbList<AccountSteam> createRepeated() => $pb.PbList<AccountSteam>();
  static AccountSteam getDefault() => _defaultInstance ??= create()..freeze();
  static AccountSteam _defaultInstance;

  $core.String get token => $_getS(0, '');
  set token($core.String v) { $_setString(0, v); }
  $core.bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  $core.Map<$core.String, $core.String> get vars => $_getMap(1);
}

class AddFriendsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddFriendsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pPS(1, 'ids')
    ..pPS(2, 'usernames')
    ..hasRequiredFields = false
  ;

  AddFriendsRequest._() : super();
  factory AddFriendsRequest() => create();
  factory AddFriendsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFriendsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddFriendsRequest clone() => AddFriendsRequest()..mergeFromMessage(this);
  AddFriendsRequest copyWith(void Function(AddFriendsRequest) updates) => super.copyWith((message) => updates(message as AddFriendsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFriendsRequest create() => AddFriendsRequest._();
  AddFriendsRequest createEmptyInstance() => create();
  static $pb.PbList<AddFriendsRequest> createRepeated() => $pb.PbList<AddFriendsRequest>();
  static AddFriendsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AddFriendsRequest _defaultInstance;

  $core.List<$core.String> get ids => $_getList(0);

  $core.List<$core.String> get usernames => $_getList(1);
}

class AddGroupUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddGroupUsersRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..pPS(2, 'userIds')
    ..hasRequiredFields = false
  ;

  AddGroupUsersRequest._() : super();
  factory AddGroupUsersRequest() => create();
  factory AddGroupUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGroupUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddGroupUsersRequest clone() => AddGroupUsersRequest()..mergeFromMessage(this);
  AddGroupUsersRequest copyWith(void Function(AddGroupUsersRequest) updates) => super.copyWith((message) => updates(message as AddGroupUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddGroupUsersRequest create() => AddGroupUsersRequest._();
  AddGroupUsersRequest createEmptyInstance() => create();
  static $pb.PbList<AddGroupUsersRequest> createRepeated() => $pb.PbList<AddGroupUsersRequest>();
  static AddGroupUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AddGroupUsersRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);

  $core.List<$core.String> get userIds => $_getList(1);
}

class AuthenticateCustomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateCustomRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountCustom>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountCustom.getDefault, subBuilder: AccountCustom.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  AuthenticateCustomRequest._() : super();
  factory AuthenticateCustomRequest() => create();
  factory AuthenticateCustomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateCustomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateCustomRequest clone() => AuthenticateCustomRequest()..mergeFromMessage(this);
  AuthenticateCustomRequest copyWith(void Function(AuthenticateCustomRequest) updates) => super.copyWith((message) => updates(message as AuthenticateCustomRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateCustomRequest create() => AuthenticateCustomRequest._();
  AuthenticateCustomRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateCustomRequest> createRepeated() => $pb.PbList<AuthenticateCustomRequest>();
  static AuthenticateCustomRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateCustomRequest _defaultInstance;

  AccountCustom get account => $_getN(0);
  set account(AccountCustom v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);
}

class AuthenticateDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateDeviceRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountDevice>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountDevice.getDefault, subBuilder: AccountDevice.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  AuthenticateDeviceRequest._() : super();
  factory AuthenticateDeviceRequest() => create();
  factory AuthenticateDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateDeviceRequest clone() => AuthenticateDeviceRequest()..mergeFromMessage(this);
  AuthenticateDeviceRequest copyWith(void Function(AuthenticateDeviceRequest) updates) => super.copyWith((message) => updates(message as AuthenticateDeviceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateDeviceRequest create() => AuthenticateDeviceRequest._();
  AuthenticateDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateDeviceRequest> createRepeated() => $pb.PbList<AuthenticateDeviceRequest>();
  static AuthenticateDeviceRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateDeviceRequest _defaultInstance;

  AccountDevice get account => $_getN(0);
  set account(AccountDevice v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);
}

class AuthenticateEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateEmailRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountEmail>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountEmail.getDefault, subBuilder: AccountEmail.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  AuthenticateEmailRequest._() : super();
  factory AuthenticateEmailRequest() => create();
  factory AuthenticateEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateEmailRequest clone() => AuthenticateEmailRequest()..mergeFromMessage(this);
  AuthenticateEmailRequest copyWith(void Function(AuthenticateEmailRequest) updates) => super.copyWith((message) => updates(message as AuthenticateEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateEmailRequest create() => AuthenticateEmailRequest._();
  AuthenticateEmailRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateEmailRequest> createRepeated() => $pb.PbList<AuthenticateEmailRequest>();
  static AuthenticateEmailRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateEmailRequest _defaultInstance;

  AccountEmail get account => $_getN(0);
  set account(AccountEmail v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);
}

class AuthenticateFacebookRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateFacebookRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountFacebook>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountFacebook.getDefault, subBuilder: AccountFacebook.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..a<$3.BoolValue>(4, 'sync', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..hasRequiredFields = false
  ;

  AuthenticateFacebookRequest._() : super();
  factory AuthenticateFacebookRequest() => create();
  factory AuthenticateFacebookRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateFacebookRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateFacebookRequest clone() => AuthenticateFacebookRequest()..mergeFromMessage(this);
  AuthenticateFacebookRequest copyWith(void Function(AuthenticateFacebookRequest) updates) => super.copyWith((message) => updates(message as AuthenticateFacebookRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateFacebookRequest create() => AuthenticateFacebookRequest._();
  AuthenticateFacebookRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateFacebookRequest> createRepeated() => $pb.PbList<AuthenticateFacebookRequest>();
  static AuthenticateFacebookRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateFacebookRequest _defaultInstance;

  AccountFacebook get account => $_getN(0);
  set account(AccountFacebook v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);

  $3.BoolValue get sync => $_getN(3);
  set sync($3.BoolValue v) { setField(4, v); }
  $core.bool hasSync() => $_has(3);
  void clearSync() => clearField(4);
}

class AuthenticateGameCenterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateGameCenterRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountGameCenter>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountGameCenter.getDefault, subBuilder: AccountGameCenter.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  AuthenticateGameCenterRequest._() : super();
  factory AuthenticateGameCenterRequest() => create();
  factory AuthenticateGameCenterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateGameCenterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateGameCenterRequest clone() => AuthenticateGameCenterRequest()..mergeFromMessage(this);
  AuthenticateGameCenterRequest copyWith(void Function(AuthenticateGameCenterRequest) updates) => super.copyWith((message) => updates(message as AuthenticateGameCenterRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateGameCenterRequest create() => AuthenticateGameCenterRequest._();
  AuthenticateGameCenterRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateGameCenterRequest> createRepeated() => $pb.PbList<AuthenticateGameCenterRequest>();
  static AuthenticateGameCenterRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateGameCenterRequest _defaultInstance;

  AccountGameCenter get account => $_getN(0);
  set account(AccountGameCenter v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);
}

class AuthenticateGoogleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateGoogleRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountGoogle>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountGoogle.getDefault, subBuilder: AccountGoogle.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  AuthenticateGoogleRequest._() : super();
  factory AuthenticateGoogleRequest() => create();
  factory AuthenticateGoogleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateGoogleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateGoogleRequest clone() => AuthenticateGoogleRequest()..mergeFromMessage(this);
  AuthenticateGoogleRequest copyWith(void Function(AuthenticateGoogleRequest) updates) => super.copyWith((message) => updates(message as AuthenticateGoogleRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateGoogleRequest create() => AuthenticateGoogleRequest._();
  AuthenticateGoogleRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateGoogleRequest> createRepeated() => $pb.PbList<AuthenticateGoogleRequest>();
  static AuthenticateGoogleRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateGoogleRequest _defaultInstance;

  AccountGoogle get account => $_getN(0);
  set account(AccountGoogle v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);
}

class AuthenticateSteamRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthenticateSteamRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountSteam>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountSteam.getDefault, subBuilder: AccountSteam.create)
    ..a<$3.BoolValue>(2, 'create', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  AuthenticateSteamRequest._() : super();
  factory AuthenticateSteamRequest() => create();
  factory AuthenticateSteamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateSteamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthenticateSteamRequest clone() => AuthenticateSteamRequest()..mergeFromMessage(this);
  AuthenticateSteamRequest copyWith(void Function(AuthenticateSteamRequest) updates) => super.copyWith((message) => updates(message as AuthenticateSteamRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateSteamRequest create() => AuthenticateSteamRequest._();
  AuthenticateSteamRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateSteamRequest> createRepeated() => $pb.PbList<AuthenticateSteamRequest>();
  static AuthenticateSteamRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthenticateSteamRequest _defaultInstance;

  AccountSteam get account => $_getN(0);
  set account(AccountSteam v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get create_2 => $_getN(1);
  set create_2($3.BoolValue v) { setField(2, v); }
  $core.bool hasCreate_2() => $_has(1);
  void clearCreate_2() => clearField(2);

  $core.String get username => $_getS(2, '');
  set username($core.String v) { $_setString(2, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);
}

class BlockFriendsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockFriendsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pPS(1, 'ids')
    ..pPS(2, 'usernames')
    ..hasRequiredFields = false
  ;

  BlockFriendsRequest._() : super();
  factory BlockFriendsRequest() => create();
  factory BlockFriendsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockFriendsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockFriendsRequest clone() => BlockFriendsRequest()..mergeFromMessage(this);
  BlockFriendsRequest copyWith(void Function(BlockFriendsRequest) updates) => super.copyWith((message) => updates(message as BlockFriendsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockFriendsRequest create() => BlockFriendsRequest._();
  BlockFriendsRequest createEmptyInstance() => create();
  static $pb.PbList<BlockFriendsRequest> createRepeated() => $pb.PbList<BlockFriendsRequest>();
  static BlockFriendsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static BlockFriendsRequest _defaultInstance;

  $core.List<$core.String> get ids => $_getList(0);

  $core.List<$core.String> get usernames => $_getList(1);
}

class ChannelMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelMessage', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'channelId')
    ..aOS(2, 'messageId')
    ..a<$3.Int32Value>(3, 'code', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(4, 'senderId')
    ..aOS(5, 'username')
    ..aOS(6, 'content')
    ..a<$2.Timestamp>(7, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(8, 'updateTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$3.BoolValue>(9, 'persistent', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(10, 'roomName')
    ..aOS(11, 'groupId')
    ..aOS(12, 'userIdOne')
    ..aOS(13, 'userIdTwo')
    ..hasRequiredFields = false
  ;

  ChannelMessage._() : super();
  factory ChannelMessage() => create();
  factory ChannelMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChannelMessage clone() => ChannelMessage()..mergeFromMessage(this);
  ChannelMessage copyWith(void Function(ChannelMessage) updates) => super.copyWith((message) => updates(message as ChannelMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelMessage create() => ChannelMessage._();
  ChannelMessage createEmptyInstance() => create();
  static $pb.PbList<ChannelMessage> createRepeated() => $pb.PbList<ChannelMessage>();
  static ChannelMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelMessage _defaultInstance;

  $core.String get channelId => $_getS(0, '');
  set channelId($core.String v) { $_setString(0, v); }
  $core.bool hasChannelId() => $_has(0);
  void clearChannelId() => clearField(1);

  $core.String get messageId => $_getS(1, '');
  set messageId($core.String v) { $_setString(1, v); }
  $core.bool hasMessageId() => $_has(1);
  void clearMessageId() => clearField(2);

  $3.Int32Value get code => $_getN(2);
  set code($3.Int32Value v) { setField(3, v); }
  $core.bool hasCode() => $_has(2);
  void clearCode() => clearField(3);

  $core.String get senderId => $_getS(3, '');
  set senderId($core.String v) { $_setString(3, v); }
  $core.bool hasSenderId() => $_has(3);
  void clearSenderId() => clearField(4);

  $core.String get username => $_getS(4, '');
  set username($core.String v) { $_setString(4, v); }
  $core.bool hasUsername() => $_has(4);
  void clearUsername() => clearField(5);

  $core.String get content => $_getS(5, '');
  set content($core.String v) { $_setString(5, v); }
  $core.bool hasContent() => $_has(5);
  void clearContent() => clearField(6);

  $2.Timestamp get createTime => $_getN(6);
  set createTime($2.Timestamp v) { setField(7, v); }
  $core.bool hasCreateTime() => $_has(6);
  void clearCreateTime() => clearField(7);

  $2.Timestamp get updateTime => $_getN(7);
  set updateTime($2.Timestamp v) { setField(8, v); }
  $core.bool hasUpdateTime() => $_has(7);
  void clearUpdateTime() => clearField(8);

  $3.BoolValue get persistent => $_getN(8);
  set persistent($3.BoolValue v) { setField(9, v); }
  $core.bool hasPersistent() => $_has(8);
  void clearPersistent() => clearField(9);

  $core.String get roomName => $_getS(9, '');
  set roomName($core.String v) { $_setString(9, v); }
  $core.bool hasRoomName() => $_has(9);
  void clearRoomName() => clearField(10);

  $core.String get groupId => $_getS(10, '');
  set groupId($core.String v) { $_setString(10, v); }
  $core.bool hasGroupId() => $_has(10);
  void clearGroupId() => clearField(11);

  $core.String get userIdOne => $_getS(11, '');
  set userIdOne($core.String v) { $_setString(11, v); }
  $core.bool hasUserIdOne() => $_has(11);
  void clearUserIdOne() => clearField(12);

  $core.String get userIdTwo => $_getS(12, '');
  set userIdTwo($core.String v) { $_setString(12, v); }
  $core.bool hasUserIdTwo() => $_has(12);
  void clearUserIdTwo() => clearField(13);
}

class ChannelMessageList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelMessageList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<ChannelMessage>(1, 'messages', $pb.PbFieldType.PM, subBuilder: ChannelMessage.create)
    ..aOS(2, 'nextCursor')
    ..aOS(3, 'prevCursor')
    ..hasRequiredFields = false
  ;

  ChannelMessageList._() : super();
  factory ChannelMessageList() => create();
  factory ChannelMessageList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelMessageList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChannelMessageList clone() => ChannelMessageList()..mergeFromMessage(this);
  ChannelMessageList copyWith(void Function(ChannelMessageList) updates) => super.copyWith((message) => updates(message as ChannelMessageList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelMessageList create() => ChannelMessageList._();
  ChannelMessageList createEmptyInstance() => create();
  static $pb.PbList<ChannelMessageList> createRepeated() => $pb.PbList<ChannelMessageList>();
  static ChannelMessageList getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelMessageList _defaultInstance;

  $core.List<ChannelMessage> get messages => $_getList(0);

  $core.String get nextCursor => $_getS(1, '');
  set nextCursor($core.String v) { $_setString(1, v); }
  $core.bool hasNextCursor() => $_has(1);
  void clearNextCursor() => clearField(2);

  $core.String get prevCursor => $_getS(2, '');
  set prevCursor($core.String v) { $_setString(2, v); }
  $core.bool hasPrevCursor() => $_has(2);
  void clearPrevCursor() => clearField(3);
}

class CreateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'description')
    ..aOS(3, 'langTag')
    ..aOS(4, 'avatarUrl')
    ..aOB(5, 'open')
    ..a<$core.int>(6, 'maxCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CreateGroupRequest._() : super();
  factory CreateGroupRequest() => create();
  factory CreateGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateGroupRequest clone() => CreateGroupRequest()..mergeFromMessage(this);
  CreateGroupRequest copyWith(void Function(CreateGroupRequest) updates) => super.copyWith((message) => updates(message as CreateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest create() => CreateGroupRequest._();
  CreateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGroupRequest> createRepeated() => $pb.PbList<CreateGroupRequest>();
  static CreateGroupRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateGroupRequest _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get description => $_getS(1, '');
  set description($core.String v) { $_setString(1, v); }
  $core.bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);

  $core.String get langTag => $_getS(2, '');
  set langTag($core.String v) { $_setString(2, v); }
  $core.bool hasLangTag() => $_has(2);
  void clearLangTag() => clearField(3);

  $core.String get avatarUrl => $_getS(3, '');
  set avatarUrl($core.String v) { $_setString(3, v); }
  $core.bool hasAvatarUrl() => $_has(3);
  void clearAvatarUrl() => clearField(4);

  $core.bool get open => $_get(4, false);
  set open($core.bool v) { $_setBool(4, v); }
  $core.bool hasOpen() => $_has(4);
  void clearOpen() => clearField(5);

  $core.int get maxCount => $_get(5, 0);
  set maxCount($core.int v) { $_setSignedInt32(5, v); }
  $core.bool hasMaxCount() => $_has(5);
  void clearMaxCount() => clearField(6);
}

class DeleteFriendsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteFriendsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pPS(1, 'ids')
    ..pPS(2, 'usernames')
    ..hasRequiredFields = false
  ;

  DeleteFriendsRequest._() : super();
  factory DeleteFriendsRequest() => create();
  factory DeleteFriendsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFriendsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteFriendsRequest clone() => DeleteFriendsRequest()..mergeFromMessage(this);
  DeleteFriendsRequest copyWith(void Function(DeleteFriendsRequest) updates) => super.copyWith((message) => updates(message as DeleteFriendsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteFriendsRequest create() => DeleteFriendsRequest._();
  DeleteFriendsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteFriendsRequest> createRepeated() => $pb.PbList<DeleteFriendsRequest>();
  static DeleteFriendsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteFriendsRequest _defaultInstance;

  $core.List<$core.String> get ids => $_getList(0);

  $core.List<$core.String> get usernames => $_getList(1);
}

class DeleteGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..hasRequiredFields = false
  ;

  DeleteGroupRequest._() : super();
  factory DeleteGroupRequest() => create();
  factory DeleteGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteGroupRequest clone() => DeleteGroupRequest()..mergeFromMessage(this);
  DeleteGroupRequest copyWith(void Function(DeleteGroupRequest) updates) => super.copyWith((message) => updates(message as DeleteGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest create() => DeleteGroupRequest._();
  DeleteGroupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupRequest> createRepeated() => $pb.PbList<DeleteGroupRequest>();
  static DeleteGroupRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteGroupRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);
}

class DeleteLeaderboardRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteLeaderboardRecordRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'leaderboardId')
    ..hasRequiredFields = false
  ;

  DeleteLeaderboardRecordRequest._() : super();
  factory DeleteLeaderboardRecordRequest() => create();
  factory DeleteLeaderboardRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLeaderboardRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteLeaderboardRecordRequest clone() => DeleteLeaderboardRecordRequest()..mergeFromMessage(this);
  DeleteLeaderboardRecordRequest copyWith(void Function(DeleteLeaderboardRecordRequest) updates) => super.copyWith((message) => updates(message as DeleteLeaderboardRecordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteLeaderboardRecordRequest create() => DeleteLeaderboardRecordRequest._();
  DeleteLeaderboardRecordRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteLeaderboardRecordRequest> createRepeated() => $pb.PbList<DeleteLeaderboardRecordRequest>();
  static DeleteLeaderboardRecordRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteLeaderboardRecordRequest _defaultInstance;

  $core.String get leaderboardId => $_getS(0, '');
  set leaderboardId($core.String v) { $_setString(0, v); }
  $core.bool hasLeaderboardId() => $_has(0);
  void clearLeaderboardId() => clearField(1);
}

class DeleteNotificationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteNotificationsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pPS(1, 'ids')
    ..hasRequiredFields = false
  ;

  DeleteNotificationsRequest._() : super();
  factory DeleteNotificationsRequest() => create();
  factory DeleteNotificationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNotificationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteNotificationsRequest clone() => DeleteNotificationsRequest()..mergeFromMessage(this);
  DeleteNotificationsRequest copyWith(void Function(DeleteNotificationsRequest) updates) => super.copyWith((message) => updates(message as DeleteNotificationsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationsRequest create() => DeleteNotificationsRequest._();
  DeleteNotificationsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNotificationsRequest> createRepeated() => $pb.PbList<DeleteNotificationsRequest>();
  static DeleteNotificationsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteNotificationsRequest _defaultInstance;

  $core.List<$core.String> get ids => $_getList(0);
}

class DeleteStorageObjectId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteStorageObjectId', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'collection')
    ..aOS(2, 'key')
    ..aOS(3, 'version')
    ..hasRequiredFields = false
  ;

  DeleteStorageObjectId._() : super();
  factory DeleteStorageObjectId() => create();
  factory DeleteStorageObjectId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStorageObjectId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteStorageObjectId clone() => DeleteStorageObjectId()..mergeFromMessage(this);
  DeleteStorageObjectId copyWith(void Function(DeleteStorageObjectId) updates) => super.copyWith((message) => updates(message as DeleteStorageObjectId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteStorageObjectId create() => DeleteStorageObjectId._();
  DeleteStorageObjectId createEmptyInstance() => create();
  static $pb.PbList<DeleteStorageObjectId> createRepeated() => $pb.PbList<DeleteStorageObjectId>();
  static DeleteStorageObjectId getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteStorageObjectId _defaultInstance;

  $core.String get collection => $_getS(0, '');
  set collection($core.String v) { $_setString(0, v); }
  $core.bool hasCollection() => $_has(0);
  void clearCollection() => clearField(1);

  $core.String get key => $_getS(1, '');
  set key($core.String v) { $_setString(1, v); }
  $core.bool hasKey() => $_has(1);
  void clearKey() => clearField(2);

  $core.String get version => $_getS(2, '');
  set version($core.String v) { $_setString(2, v); }
  $core.bool hasVersion() => $_has(2);
  void clearVersion() => clearField(3);
}

class DeleteStorageObjectsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteStorageObjectsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<DeleteStorageObjectId>(1, 'objectIds', $pb.PbFieldType.PM, subBuilder: DeleteStorageObjectId.create)
    ..hasRequiredFields = false
  ;

  DeleteStorageObjectsRequest._() : super();
  factory DeleteStorageObjectsRequest() => create();
  factory DeleteStorageObjectsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStorageObjectsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteStorageObjectsRequest clone() => DeleteStorageObjectsRequest()..mergeFromMessage(this);
  DeleteStorageObjectsRequest copyWith(void Function(DeleteStorageObjectsRequest) updates) => super.copyWith((message) => updates(message as DeleteStorageObjectsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteStorageObjectsRequest create() => DeleteStorageObjectsRequest._();
  DeleteStorageObjectsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStorageObjectsRequest> createRepeated() => $pb.PbList<DeleteStorageObjectsRequest>();
  static DeleteStorageObjectsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteStorageObjectsRequest _defaultInstance;

  $core.List<DeleteStorageObjectId> get objectIds => $_getList(0);
}

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Event', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..m<$core.String, $core.String>(2, 'properties', entryClassName: 'Event.PropertiesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nakama.api'))
    ..a<$2.Timestamp>(3, 'timestamp', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event() => create();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Event clone() => Event()..mergeFromMessage(this);
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  static Event getDefault() => _defaultInstance ??= create()..freeze();
  static Event _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.Map<$core.String, $core.String> get properties => $_getMap(1);

  $2.Timestamp get timestamp => $_getN(2);
  set timestamp($2.Timestamp v) { setField(3, v); }
  $core.bool hasTimestamp() => $_has(2);
  void clearTimestamp() => clearField(3);
}

class Friend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Friend', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<User>(1, 'user', $pb.PbFieldType.OM, defaultOrMaker: User.getDefault, subBuilder: User.create)
    ..a<$3.Int32Value>(2, 'state', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..hasRequiredFields = false
  ;

  Friend._() : super();
  factory Friend() => create();
  factory Friend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Friend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Friend clone() => Friend()..mergeFromMessage(this);
  Friend copyWith(void Function(Friend) updates) => super.copyWith((message) => updates(message as Friend));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Friend create() => Friend._();
  Friend createEmptyInstance() => create();
  static $pb.PbList<Friend> createRepeated() => $pb.PbList<Friend>();
  static Friend getDefault() => _defaultInstance ??= create()..freeze();
  static Friend _defaultInstance;

  User get user => $_getN(0);
  set user(User v) { setField(1, v); }
  $core.bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  $3.Int32Value get state => $_getN(1);
  set state($3.Int32Value v) { setField(2, v); }
  $core.bool hasState() => $_has(1);
  void clearState() => clearField(2);
}

class FriendList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FriendList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<Friend>(1, 'friends', $pb.PbFieldType.PM, subBuilder: Friend.create)
    ..aOS(2, 'cursor')
    ..hasRequiredFields = false
  ;

  FriendList._() : super();
  factory FriendList() => create();
  factory FriendList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FriendList clone() => FriendList()..mergeFromMessage(this);
  FriendList copyWith(void Function(FriendList) updates) => super.copyWith((message) => updates(message as FriendList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FriendList create() => FriendList._();
  FriendList createEmptyInstance() => create();
  static $pb.PbList<FriendList> createRepeated() => $pb.PbList<FriendList>();
  static FriendList getDefault() => _defaultInstance ??= create()..freeze();
  static FriendList _defaultInstance;

  $core.List<Friend> get friends => $_getList(0);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);
}

class GetUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUsersRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pPS(1, 'ids')
    ..pPS(2, 'usernames')
    ..pPS(3, 'facebookIds')
    ..hasRequiredFields = false
  ;

  GetUsersRequest._() : super();
  factory GetUsersRequest() => create();
  factory GetUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUsersRequest clone() => GetUsersRequest()..mergeFromMessage(this);
  GetUsersRequest copyWith(void Function(GetUsersRequest) updates) => super.copyWith((message) => updates(message as GetUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUsersRequest create() => GetUsersRequest._();
  GetUsersRequest createEmptyInstance() => create();
  static $pb.PbList<GetUsersRequest> createRepeated() => $pb.PbList<GetUsersRequest>();
  static GetUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetUsersRequest _defaultInstance;

  $core.List<$core.String> get ids => $_getList(0);

  $core.List<$core.String> get usernames => $_getList(1);

  $core.List<$core.String> get facebookIds => $_getList(2);
}

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Group', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'creatorId')
    ..aOS(3, 'name')
    ..aOS(4, 'description')
    ..aOS(5, 'langTag')
    ..aOS(6, 'metadata')
    ..aOS(7, 'avatarUrl')
    ..a<$3.BoolValue>(8, 'open', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..a<$core.int>(9, 'edgeCount', $pb.PbFieldType.O3)
    ..a<$core.int>(10, 'maxCount', $pb.PbFieldType.O3)
    ..a<$2.Timestamp>(11, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(12, 'updateTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Group clone() => Group()..mergeFromMessage(this);
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  static Group getDefault() => _defaultInstance ??= create()..freeze();
  static Group _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get creatorId => $_getS(1, '');
  set creatorId($core.String v) { $_setString(1, v); }
  $core.bool hasCreatorId() => $_has(1);
  void clearCreatorId() => clearField(2);

  $core.String get name => $_getS(2, '');
  set name($core.String v) { $_setString(2, v); }
  $core.bool hasName() => $_has(2);
  void clearName() => clearField(3);

  $core.String get description => $_getS(3, '');
  set description($core.String v) { $_setString(3, v); }
  $core.bool hasDescription() => $_has(3);
  void clearDescription() => clearField(4);

  $core.String get langTag => $_getS(4, '');
  set langTag($core.String v) { $_setString(4, v); }
  $core.bool hasLangTag() => $_has(4);
  void clearLangTag() => clearField(5);

  $core.String get metadata => $_getS(5, '');
  set metadata($core.String v) { $_setString(5, v); }
  $core.bool hasMetadata() => $_has(5);
  void clearMetadata() => clearField(6);

  $core.String get avatarUrl => $_getS(6, '');
  set avatarUrl($core.String v) { $_setString(6, v); }
  $core.bool hasAvatarUrl() => $_has(6);
  void clearAvatarUrl() => clearField(7);

  $3.BoolValue get open => $_getN(7);
  set open($3.BoolValue v) { setField(8, v); }
  $core.bool hasOpen() => $_has(7);
  void clearOpen() => clearField(8);

  $core.int get edgeCount => $_get(8, 0);
  set edgeCount($core.int v) { $_setSignedInt32(8, v); }
  $core.bool hasEdgeCount() => $_has(8);
  void clearEdgeCount() => clearField(9);

  $core.int get maxCount => $_get(9, 0);
  set maxCount($core.int v) { $_setSignedInt32(9, v); }
  $core.bool hasMaxCount() => $_has(9);
  void clearMaxCount() => clearField(10);

  $2.Timestamp get createTime => $_getN(10);
  set createTime($2.Timestamp v) { setField(11, v); }
  $core.bool hasCreateTime() => $_has(10);
  void clearCreateTime() => clearField(11);

  $2.Timestamp get updateTime => $_getN(11);
  set updateTime($2.Timestamp v) { setField(12, v); }
  $core.bool hasUpdateTime() => $_has(11);
  void clearUpdateTime() => clearField(12);
}

class GroupList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GroupList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<Group>(1, 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..aOS(2, 'cursor')
    ..hasRequiredFields = false
  ;

  GroupList._() : super();
  factory GroupList() => create();
  factory GroupList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GroupList clone() => GroupList()..mergeFromMessage(this);
  GroupList copyWith(void Function(GroupList) updates) => super.copyWith((message) => updates(message as GroupList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupList create() => GroupList._();
  GroupList createEmptyInstance() => create();
  static $pb.PbList<GroupList> createRepeated() => $pb.PbList<GroupList>();
  static GroupList getDefault() => _defaultInstance ??= create()..freeze();
  static GroupList _defaultInstance;

  $core.List<Group> get groups => $_getList(0);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);
}

class GroupUserList_GroupUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GroupUserList.GroupUser', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<User>(1, 'user', $pb.PbFieldType.OM, defaultOrMaker: User.getDefault, subBuilder: User.create)
    ..a<$3.Int32Value>(2, 'state', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..hasRequiredFields = false
  ;

  GroupUserList_GroupUser._() : super();
  factory GroupUserList_GroupUser() => create();
  factory GroupUserList_GroupUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupUserList_GroupUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GroupUserList_GroupUser clone() => GroupUserList_GroupUser()..mergeFromMessage(this);
  GroupUserList_GroupUser copyWith(void Function(GroupUserList_GroupUser) updates) => super.copyWith((message) => updates(message as GroupUserList_GroupUser));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupUserList_GroupUser create() => GroupUserList_GroupUser._();
  GroupUserList_GroupUser createEmptyInstance() => create();
  static $pb.PbList<GroupUserList_GroupUser> createRepeated() => $pb.PbList<GroupUserList_GroupUser>();
  static GroupUserList_GroupUser getDefault() => _defaultInstance ??= create()..freeze();
  static GroupUserList_GroupUser _defaultInstance;

  User get user => $_getN(0);
  set user(User v) { setField(1, v); }
  $core.bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  $3.Int32Value get state => $_getN(1);
  set state($3.Int32Value v) { setField(2, v); }
  $core.bool hasState() => $_has(1);
  void clearState() => clearField(2);
}

class GroupUserList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GroupUserList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<GroupUserList_GroupUser>(1, 'groupUsers', $pb.PbFieldType.PM, subBuilder: GroupUserList_GroupUser.create)
    ..aOS(2, 'cursor')
    ..hasRequiredFields = false
  ;

  GroupUserList._() : super();
  factory GroupUserList() => create();
  factory GroupUserList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupUserList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GroupUserList clone() => GroupUserList()..mergeFromMessage(this);
  GroupUserList copyWith(void Function(GroupUserList) updates) => super.copyWith((message) => updates(message as GroupUserList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupUserList create() => GroupUserList._();
  GroupUserList createEmptyInstance() => create();
  static $pb.PbList<GroupUserList> createRepeated() => $pb.PbList<GroupUserList>();
  static GroupUserList getDefault() => _defaultInstance ??= create()..freeze();
  static GroupUserList _defaultInstance;

  $core.List<GroupUserList_GroupUser> get groupUsers => $_getList(0);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);
}

class ImportFacebookFriendsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ImportFacebookFriendsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountFacebook>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountFacebook.getDefault, subBuilder: AccountFacebook.create)
    ..a<$3.BoolValue>(2, 'reset', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..hasRequiredFields = false
  ;

  ImportFacebookFriendsRequest._() : super();
  factory ImportFacebookFriendsRequest() => create();
  factory ImportFacebookFriendsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportFacebookFriendsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ImportFacebookFriendsRequest clone() => ImportFacebookFriendsRequest()..mergeFromMessage(this);
  ImportFacebookFriendsRequest copyWith(void Function(ImportFacebookFriendsRequest) updates) => super.copyWith((message) => updates(message as ImportFacebookFriendsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportFacebookFriendsRequest create() => ImportFacebookFriendsRequest._();
  ImportFacebookFriendsRequest createEmptyInstance() => create();
  static $pb.PbList<ImportFacebookFriendsRequest> createRepeated() => $pb.PbList<ImportFacebookFriendsRequest>();
  static ImportFacebookFriendsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ImportFacebookFriendsRequest _defaultInstance;

  AccountFacebook get account => $_getN(0);
  set account(AccountFacebook v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get reset => $_getN(1);
  set reset($3.BoolValue v) { setField(2, v); }
  $core.bool hasReset() => $_has(1);
  void clearReset() => clearField(2);
}

class JoinGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinGroupRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..hasRequiredFields = false
  ;

  JoinGroupRequest._() : super();
  factory JoinGroupRequest() => create();
  factory JoinGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JoinGroupRequest clone() => JoinGroupRequest()..mergeFromMessage(this);
  JoinGroupRequest copyWith(void Function(JoinGroupRequest) updates) => super.copyWith((message) => updates(message as JoinGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinGroupRequest create() => JoinGroupRequest._();
  JoinGroupRequest createEmptyInstance() => create();
  static $pb.PbList<JoinGroupRequest> createRepeated() => $pb.PbList<JoinGroupRequest>();
  static JoinGroupRequest getDefault() => _defaultInstance ??= create()..freeze();
  static JoinGroupRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);
}

class JoinTournamentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinTournamentRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'tournamentId')
    ..hasRequiredFields = false
  ;

  JoinTournamentRequest._() : super();
  factory JoinTournamentRequest() => create();
  factory JoinTournamentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinTournamentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JoinTournamentRequest clone() => JoinTournamentRequest()..mergeFromMessage(this);
  JoinTournamentRequest copyWith(void Function(JoinTournamentRequest) updates) => super.copyWith((message) => updates(message as JoinTournamentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinTournamentRequest create() => JoinTournamentRequest._();
  JoinTournamentRequest createEmptyInstance() => create();
  static $pb.PbList<JoinTournamentRequest> createRepeated() => $pb.PbList<JoinTournamentRequest>();
  static JoinTournamentRequest getDefault() => _defaultInstance ??= create()..freeze();
  static JoinTournamentRequest _defaultInstance;

  $core.String get tournamentId => $_getS(0, '');
  set tournamentId($core.String v) { $_setString(0, v); }
  $core.bool hasTournamentId() => $_has(0);
  void clearTournamentId() => clearField(1);
}

class KickGroupUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KickGroupUsersRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..pPS(2, 'userIds')
    ..hasRequiredFields = false
  ;

  KickGroupUsersRequest._() : super();
  factory KickGroupUsersRequest() => create();
  factory KickGroupUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickGroupUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KickGroupUsersRequest clone() => KickGroupUsersRequest()..mergeFromMessage(this);
  KickGroupUsersRequest copyWith(void Function(KickGroupUsersRequest) updates) => super.copyWith((message) => updates(message as KickGroupUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KickGroupUsersRequest create() => KickGroupUsersRequest._();
  KickGroupUsersRequest createEmptyInstance() => create();
  static $pb.PbList<KickGroupUsersRequest> createRepeated() => $pb.PbList<KickGroupUsersRequest>();
  static KickGroupUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static KickGroupUsersRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);

  $core.List<$core.String> get userIds => $_getList(1);
}

class LeaderboardRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LeaderboardRecord', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'leaderboardId')
    ..aOS(2, 'ownerId')
    ..a<$3.StringValue>(3, 'username', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..aInt64(4, 'score')
    ..aInt64(5, 'subscore')
    ..a<$core.int>(6, 'numScore', $pb.PbFieldType.O3)
    ..aOS(7, 'metadata')
    ..a<$2.Timestamp>(8, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(9, 'updateTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(10, 'expiryTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..aInt64(11, 'rank')
    ..a<$core.int>(12, 'maxNumScore', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  LeaderboardRecord._() : super();
  factory LeaderboardRecord() => create();
  factory LeaderboardRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaderboardRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LeaderboardRecord clone() => LeaderboardRecord()..mergeFromMessage(this);
  LeaderboardRecord copyWith(void Function(LeaderboardRecord) updates) => super.copyWith((message) => updates(message as LeaderboardRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaderboardRecord create() => LeaderboardRecord._();
  LeaderboardRecord createEmptyInstance() => create();
  static $pb.PbList<LeaderboardRecord> createRepeated() => $pb.PbList<LeaderboardRecord>();
  static LeaderboardRecord getDefault() => _defaultInstance ??= create()..freeze();
  static LeaderboardRecord _defaultInstance;

  $core.String get leaderboardId => $_getS(0, '');
  set leaderboardId($core.String v) { $_setString(0, v); }
  $core.bool hasLeaderboardId() => $_has(0);
  void clearLeaderboardId() => clearField(1);

  $core.String get ownerId => $_getS(1, '');
  set ownerId($core.String v) { $_setString(1, v); }
  $core.bool hasOwnerId() => $_has(1);
  void clearOwnerId() => clearField(2);

  $3.StringValue get username => $_getN(2);
  set username($3.StringValue v) { setField(3, v); }
  $core.bool hasUsername() => $_has(2);
  void clearUsername() => clearField(3);

  Int64 get score => $_getI64(3);
  set score(Int64 v) { $_setInt64(3, v); }
  $core.bool hasScore() => $_has(3);
  void clearScore() => clearField(4);

  Int64 get subscore => $_getI64(4);
  set subscore(Int64 v) { $_setInt64(4, v); }
  $core.bool hasSubscore() => $_has(4);
  void clearSubscore() => clearField(5);

  $core.int get numScore => $_get(5, 0);
  set numScore($core.int v) { $_setSignedInt32(5, v); }
  $core.bool hasNumScore() => $_has(5);
  void clearNumScore() => clearField(6);

  $core.String get metadata => $_getS(6, '');
  set metadata($core.String v) { $_setString(6, v); }
  $core.bool hasMetadata() => $_has(6);
  void clearMetadata() => clearField(7);

  $2.Timestamp get createTime => $_getN(7);
  set createTime($2.Timestamp v) { setField(8, v); }
  $core.bool hasCreateTime() => $_has(7);
  void clearCreateTime() => clearField(8);

  $2.Timestamp get updateTime => $_getN(8);
  set updateTime($2.Timestamp v) { setField(9, v); }
  $core.bool hasUpdateTime() => $_has(8);
  void clearUpdateTime() => clearField(9);

  $2.Timestamp get expiryTime => $_getN(9);
  set expiryTime($2.Timestamp v) { setField(10, v); }
  $core.bool hasExpiryTime() => $_has(9);
  void clearExpiryTime() => clearField(10);

  Int64 get rank => $_getI64(10);
  set rank(Int64 v) { $_setInt64(10, v); }
  $core.bool hasRank() => $_has(10);
  void clearRank() => clearField(11);

  $core.int get maxNumScore => $_get(11, 0);
  set maxNumScore($core.int v) { $_setUnsignedInt32(11, v); }
  $core.bool hasMaxNumScore() => $_has(11);
  void clearMaxNumScore() => clearField(12);
}

class LeaderboardRecordList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LeaderboardRecordList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<LeaderboardRecord>(1, 'records', $pb.PbFieldType.PM, subBuilder: LeaderboardRecord.create)
    ..pc<LeaderboardRecord>(2, 'ownerRecords', $pb.PbFieldType.PM, subBuilder: LeaderboardRecord.create)
    ..aOS(3, 'nextCursor')
    ..aOS(4, 'prevCursor')
    ..hasRequiredFields = false
  ;

  LeaderboardRecordList._() : super();
  factory LeaderboardRecordList() => create();
  factory LeaderboardRecordList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaderboardRecordList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LeaderboardRecordList clone() => LeaderboardRecordList()..mergeFromMessage(this);
  LeaderboardRecordList copyWith(void Function(LeaderboardRecordList) updates) => super.copyWith((message) => updates(message as LeaderboardRecordList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaderboardRecordList create() => LeaderboardRecordList._();
  LeaderboardRecordList createEmptyInstance() => create();
  static $pb.PbList<LeaderboardRecordList> createRepeated() => $pb.PbList<LeaderboardRecordList>();
  static LeaderboardRecordList getDefault() => _defaultInstance ??= create()..freeze();
  static LeaderboardRecordList _defaultInstance;

  $core.List<LeaderboardRecord> get records => $_getList(0);

  $core.List<LeaderboardRecord> get ownerRecords => $_getList(1);

  $core.String get nextCursor => $_getS(2, '');
  set nextCursor($core.String v) { $_setString(2, v); }
  $core.bool hasNextCursor() => $_has(2);
  void clearNextCursor() => clearField(3);

  $core.String get prevCursor => $_getS(3, '');
  set prevCursor($core.String v) { $_setString(3, v); }
  $core.bool hasPrevCursor() => $_has(3);
  void clearPrevCursor() => clearField(4);
}

class LeaveGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LeaveGroupRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..hasRequiredFields = false
  ;

  LeaveGroupRequest._() : super();
  factory LeaveGroupRequest() => create();
  factory LeaveGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaveGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LeaveGroupRequest clone() => LeaveGroupRequest()..mergeFromMessage(this);
  LeaveGroupRequest copyWith(void Function(LeaveGroupRequest) updates) => super.copyWith((message) => updates(message as LeaveGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaveGroupRequest create() => LeaveGroupRequest._();
  LeaveGroupRequest createEmptyInstance() => create();
  static $pb.PbList<LeaveGroupRequest> createRepeated() => $pb.PbList<LeaveGroupRequest>();
  static LeaveGroupRequest getDefault() => _defaultInstance ??= create()..freeze();
  static LeaveGroupRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);
}

class LinkFacebookRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LinkFacebookRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<AccountFacebook>(1, 'account', $pb.PbFieldType.OM, defaultOrMaker: AccountFacebook.getDefault, subBuilder: AccountFacebook.create)
    ..a<$3.BoolValue>(4, 'sync', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..hasRequiredFields = false
  ;

  LinkFacebookRequest._() : super();
  factory LinkFacebookRequest() => create();
  factory LinkFacebookRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkFacebookRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LinkFacebookRequest clone() => LinkFacebookRequest()..mergeFromMessage(this);
  LinkFacebookRequest copyWith(void Function(LinkFacebookRequest) updates) => super.copyWith((message) => updates(message as LinkFacebookRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkFacebookRequest create() => LinkFacebookRequest._();
  LinkFacebookRequest createEmptyInstance() => create();
  static $pb.PbList<LinkFacebookRequest> createRepeated() => $pb.PbList<LinkFacebookRequest>();
  static LinkFacebookRequest getDefault() => _defaultInstance ??= create()..freeze();
  static LinkFacebookRequest _defaultInstance;

  AccountFacebook get account => $_getN(0);
  set account(AccountFacebook v) { setField(1, v); }
  $core.bool hasAccount() => $_has(0);
  void clearAccount() => clearField(1);

  $3.BoolValue get sync => $_getN(1);
  set sync($3.BoolValue v) { setField(4, v); }
  $core.bool hasSync() => $_has(1);
  void clearSync() => clearField(4);
}

class ListChannelMessagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChannelMessagesRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'channelId')
    ..a<$3.Int32Value>(2, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.BoolValue>(3, 'forward', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..aOS(4, 'cursor')
    ..hasRequiredFields = false
  ;

  ListChannelMessagesRequest._() : super();
  factory ListChannelMessagesRequest() => create();
  factory ListChannelMessagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChannelMessagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListChannelMessagesRequest clone() => ListChannelMessagesRequest()..mergeFromMessage(this);
  ListChannelMessagesRequest copyWith(void Function(ListChannelMessagesRequest) updates) => super.copyWith((message) => updates(message as ListChannelMessagesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChannelMessagesRequest create() => ListChannelMessagesRequest._();
  ListChannelMessagesRequest createEmptyInstance() => create();
  static $pb.PbList<ListChannelMessagesRequest> createRepeated() => $pb.PbList<ListChannelMessagesRequest>();
  static ListChannelMessagesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListChannelMessagesRequest _defaultInstance;

  $core.String get channelId => $_getS(0, '');
  set channelId($core.String v) { $_setString(0, v); }
  $core.bool hasChannelId() => $_has(0);
  void clearChannelId() => clearField(1);

  $3.Int32Value get limit => $_getN(1);
  set limit($3.Int32Value v) { setField(2, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  $3.BoolValue get forward => $_getN(2);
  set forward($3.BoolValue v) { setField(3, v); }
  $core.bool hasForward() => $_has(2);
  void clearForward() => clearField(3);

  $core.String get cursor => $_getS(3, '');
  set cursor($core.String v) { $_setString(3, v); }
  $core.bool hasCursor() => $_has(3);
  void clearCursor() => clearField(4);
}

class ListFriendsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListFriendsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<$3.Int32Value>(1, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.Int32Value>(2, 'state', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(3, 'cursor')
    ..hasRequiredFields = false
  ;

  ListFriendsRequest._() : super();
  factory ListFriendsRequest() => create();
  factory ListFriendsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFriendsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListFriendsRequest clone() => ListFriendsRequest()..mergeFromMessage(this);
  ListFriendsRequest copyWith(void Function(ListFriendsRequest) updates) => super.copyWith((message) => updates(message as ListFriendsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFriendsRequest create() => ListFriendsRequest._();
  ListFriendsRequest createEmptyInstance() => create();
  static $pb.PbList<ListFriendsRequest> createRepeated() => $pb.PbList<ListFriendsRequest>();
  static ListFriendsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListFriendsRequest _defaultInstance;

  $3.Int32Value get limit => $_getN(0);
  set limit($3.Int32Value v) { setField(1, v); }
  $core.bool hasLimit() => $_has(0);
  void clearLimit() => clearField(1);

  $3.Int32Value get state => $_getN(1);
  set state($3.Int32Value v) { setField(2, v); }
  $core.bool hasState() => $_has(1);
  void clearState() => clearField(2);

  $core.String get cursor => $_getS(2, '');
  set cursor($core.String v) { $_setString(2, v); }
  $core.bool hasCursor() => $_has(2);
  void clearCursor() => clearField(3);
}

class ListGroupsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'cursor')
    ..a<$3.Int32Value>(3, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..hasRequiredFields = false
  ;

  ListGroupsRequest._() : super();
  factory ListGroupsRequest() => create();
  factory ListGroupsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListGroupsRequest clone() => ListGroupsRequest()..mergeFromMessage(this);
  ListGroupsRequest copyWith(void Function(ListGroupsRequest) updates) => super.copyWith((message) => updates(message as ListGroupsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupsRequest create() => ListGroupsRequest._();
  ListGroupsRequest createEmptyInstance() => create();
  static $pb.PbList<ListGroupsRequest> createRepeated() => $pb.PbList<ListGroupsRequest>();
  static ListGroupsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListGroupsRequest _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);

  $3.Int32Value get limit => $_getN(2);
  set limit($3.Int32Value v) { setField(3, v); }
  $core.bool hasLimit() => $_has(2);
  void clearLimit() => clearField(3);
}

class ListGroupUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupUsersRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..a<$3.Int32Value>(2, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.Int32Value>(3, 'state', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(4, 'cursor')
    ..hasRequiredFields = false
  ;

  ListGroupUsersRequest._() : super();
  factory ListGroupUsersRequest() => create();
  factory ListGroupUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListGroupUsersRequest clone() => ListGroupUsersRequest()..mergeFromMessage(this);
  ListGroupUsersRequest copyWith(void Function(ListGroupUsersRequest) updates) => super.copyWith((message) => updates(message as ListGroupUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupUsersRequest create() => ListGroupUsersRequest._();
  ListGroupUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ListGroupUsersRequest> createRepeated() => $pb.PbList<ListGroupUsersRequest>();
  static ListGroupUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListGroupUsersRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);

  $3.Int32Value get limit => $_getN(1);
  set limit($3.Int32Value v) { setField(2, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  $3.Int32Value get state => $_getN(2);
  set state($3.Int32Value v) { setField(3, v); }
  $core.bool hasState() => $_has(2);
  void clearState() => clearField(3);

  $core.String get cursor => $_getS(3, '');
  set cursor($core.String v) { $_setString(3, v); }
  $core.bool hasCursor() => $_has(3);
  void clearCursor() => clearField(4);
}

class ListLeaderboardRecordsAroundOwnerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListLeaderboardRecordsAroundOwnerRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'leaderboardId')
    ..a<$3.UInt32Value>(2, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.UInt32Value.getDefault, subBuilder: $3.UInt32Value.create)
    ..aOS(3, 'ownerId')
    ..a<$3.Int64Value>(4, 'expiry', $pb.PbFieldType.OM, defaultOrMaker: $3.Int64Value.getDefault, subBuilder: $3.Int64Value.create)
    ..hasRequiredFields = false
  ;

  ListLeaderboardRecordsAroundOwnerRequest._() : super();
  factory ListLeaderboardRecordsAroundOwnerRequest() => create();
  factory ListLeaderboardRecordsAroundOwnerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLeaderboardRecordsAroundOwnerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListLeaderboardRecordsAroundOwnerRequest clone() => ListLeaderboardRecordsAroundOwnerRequest()..mergeFromMessage(this);
  ListLeaderboardRecordsAroundOwnerRequest copyWith(void Function(ListLeaderboardRecordsAroundOwnerRequest) updates) => super.copyWith((message) => updates(message as ListLeaderboardRecordsAroundOwnerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLeaderboardRecordsAroundOwnerRequest create() => ListLeaderboardRecordsAroundOwnerRequest._();
  ListLeaderboardRecordsAroundOwnerRequest createEmptyInstance() => create();
  static $pb.PbList<ListLeaderboardRecordsAroundOwnerRequest> createRepeated() => $pb.PbList<ListLeaderboardRecordsAroundOwnerRequest>();
  static ListLeaderboardRecordsAroundOwnerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListLeaderboardRecordsAroundOwnerRequest _defaultInstance;

  $core.String get leaderboardId => $_getS(0, '');
  set leaderboardId($core.String v) { $_setString(0, v); }
  $core.bool hasLeaderboardId() => $_has(0);
  void clearLeaderboardId() => clearField(1);

  $3.UInt32Value get limit => $_getN(1);
  set limit($3.UInt32Value v) { setField(2, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  $core.String get ownerId => $_getS(2, '');
  set ownerId($core.String v) { $_setString(2, v); }
  $core.bool hasOwnerId() => $_has(2);
  void clearOwnerId() => clearField(3);

  $3.Int64Value get expiry => $_getN(3);
  set expiry($3.Int64Value v) { setField(4, v); }
  $core.bool hasExpiry() => $_has(3);
  void clearExpiry() => clearField(4);
}

class ListLeaderboardRecordsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListLeaderboardRecordsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'leaderboardId')
    ..pPS(2, 'ownerIds')
    ..a<$3.Int32Value>(3, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(4, 'cursor')
    ..a<$3.Int64Value>(5, 'expiry', $pb.PbFieldType.OM, defaultOrMaker: $3.Int64Value.getDefault, subBuilder: $3.Int64Value.create)
    ..hasRequiredFields = false
  ;

  ListLeaderboardRecordsRequest._() : super();
  factory ListLeaderboardRecordsRequest() => create();
  factory ListLeaderboardRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLeaderboardRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListLeaderboardRecordsRequest clone() => ListLeaderboardRecordsRequest()..mergeFromMessage(this);
  ListLeaderboardRecordsRequest copyWith(void Function(ListLeaderboardRecordsRequest) updates) => super.copyWith((message) => updates(message as ListLeaderboardRecordsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLeaderboardRecordsRequest create() => ListLeaderboardRecordsRequest._();
  ListLeaderboardRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<ListLeaderboardRecordsRequest> createRepeated() => $pb.PbList<ListLeaderboardRecordsRequest>();
  static ListLeaderboardRecordsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListLeaderboardRecordsRequest _defaultInstance;

  $core.String get leaderboardId => $_getS(0, '');
  set leaderboardId($core.String v) { $_setString(0, v); }
  $core.bool hasLeaderboardId() => $_has(0);
  void clearLeaderboardId() => clearField(1);

  $core.List<$core.String> get ownerIds => $_getList(1);

  $3.Int32Value get limit => $_getN(2);
  set limit($3.Int32Value v) { setField(3, v); }
  $core.bool hasLimit() => $_has(2);
  void clearLimit() => clearField(3);

  $core.String get cursor => $_getS(3, '');
  set cursor($core.String v) { $_setString(3, v); }
  $core.bool hasCursor() => $_has(3);
  void clearCursor() => clearField(4);

  $3.Int64Value get expiry => $_getN(4);
  set expiry($3.Int64Value v) { setField(5, v); }
  $core.bool hasExpiry() => $_has(4);
  void clearExpiry() => clearField(5);
}

class ListMatchesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListMatchesRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<$3.Int32Value>(1, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.BoolValue>(2, 'authoritative', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..a<$3.StringValue>(3, 'label', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.Int32Value>(4, 'minSize', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.Int32Value>(5, 'maxSize', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.StringValue>(6, 'query', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..hasRequiredFields = false
  ;

  ListMatchesRequest._() : super();
  factory ListMatchesRequest() => create();
  factory ListMatchesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListMatchesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListMatchesRequest clone() => ListMatchesRequest()..mergeFromMessage(this);
  ListMatchesRequest copyWith(void Function(ListMatchesRequest) updates) => super.copyWith((message) => updates(message as ListMatchesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListMatchesRequest create() => ListMatchesRequest._();
  ListMatchesRequest createEmptyInstance() => create();
  static $pb.PbList<ListMatchesRequest> createRepeated() => $pb.PbList<ListMatchesRequest>();
  static ListMatchesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListMatchesRequest _defaultInstance;

  $3.Int32Value get limit => $_getN(0);
  set limit($3.Int32Value v) { setField(1, v); }
  $core.bool hasLimit() => $_has(0);
  void clearLimit() => clearField(1);

  $3.BoolValue get authoritative => $_getN(1);
  set authoritative($3.BoolValue v) { setField(2, v); }
  $core.bool hasAuthoritative() => $_has(1);
  void clearAuthoritative() => clearField(2);

  $3.StringValue get label => $_getN(2);
  set label($3.StringValue v) { setField(3, v); }
  $core.bool hasLabel() => $_has(2);
  void clearLabel() => clearField(3);

  $3.Int32Value get minSize => $_getN(3);
  set minSize($3.Int32Value v) { setField(4, v); }
  $core.bool hasMinSize() => $_has(3);
  void clearMinSize() => clearField(4);

  $3.Int32Value get maxSize => $_getN(4);
  set maxSize($3.Int32Value v) { setField(5, v); }
  $core.bool hasMaxSize() => $_has(4);
  void clearMaxSize() => clearField(5);

  $3.StringValue get query => $_getN(5);
  set query($3.StringValue v) { setField(6, v); }
  $core.bool hasQuery() => $_has(5);
  void clearQuery() => clearField(6);
}

class ListNotificationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListNotificationsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<$3.Int32Value>(1, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(2, 'cacheableCursor')
    ..hasRequiredFields = false
  ;

  ListNotificationsRequest._() : super();
  factory ListNotificationsRequest() => create();
  factory ListNotificationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNotificationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListNotificationsRequest clone() => ListNotificationsRequest()..mergeFromMessage(this);
  ListNotificationsRequest copyWith(void Function(ListNotificationsRequest) updates) => super.copyWith((message) => updates(message as ListNotificationsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNotificationsRequest create() => ListNotificationsRequest._();
  ListNotificationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListNotificationsRequest> createRepeated() => $pb.PbList<ListNotificationsRequest>();
  static ListNotificationsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListNotificationsRequest _defaultInstance;

  $3.Int32Value get limit => $_getN(0);
  set limit($3.Int32Value v) { setField(1, v); }
  $core.bool hasLimit() => $_has(0);
  void clearLimit() => clearField(1);

  $core.String get cacheableCursor => $_getS(1, '');
  set cacheableCursor($core.String v) { $_setString(1, v); }
  $core.bool hasCacheableCursor() => $_has(1);
  void clearCacheableCursor() => clearField(2);
}

class ListStorageObjectsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListStorageObjectsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(2, 'collection')
    ..a<$3.Int32Value>(3, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(4, 'cursor')
    ..hasRequiredFields = false
  ;

  ListStorageObjectsRequest._() : super();
  factory ListStorageObjectsRequest() => create();
  factory ListStorageObjectsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStorageObjectsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListStorageObjectsRequest clone() => ListStorageObjectsRequest()..mergeFromMessage(this);
  ListStorageObjectsRequest copyWith(void Function(ListStorageObjectsRequest) updates) => super.copyWith((message) => updates(message as ListStorageObjectsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStorageObjectsRequest create() => ListStorageObjectsRequest._();
  ListStorageObjectsRequest createEmptyInstance() => create();
  static $pb.PbList<ListStorageObjectsRequest> createRepeated() => $pb.PbList<ListStorageObjectsRequest>();
  static ListStorageObjectsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListStorageObjectsRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  $core.String get collection => $_getS(1, '');
  set collection($core.String v) { $_setString(1, v); }
  $core.bool hasCollection() => $_has(1);
  void clearCollection() => clearField(2);

  $3.Int32Value get limit => $_getN(2);
  set limit($3.Int32Value v) { setField(3, v); }
  $core.bool hasLimit() => $_has(2);
  void clearLimit() => clearField(3);

  $core.String get cursor => $_getS(3, '');
  set cursor($core.String v) { $_setString(3, v); }
  $core.bool hasCursor() => $_has(3);
  void clearCursor() => clearField(4);
}

class ListTournamentRecordsAroundOwnerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListTournamentRecordsAroundOwnerRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'tournamentId')
    ..a<$3.UInt32Value>(2, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.UInt32Value.getDefault, subBuilder: $3.UInt32Value.create)
    ..aOS(3, 'ownerId')
    ..a<$3.Int64Value>(4, 'expiry', $pb.PbFieldType.OM, defaultOrMaker: $3.Int64Value.getDefault, subBuilder: $3.Int64Value.create)
    ..hasRequiredFields = false
  ;

  ListTournamentRecordsAroundOwnerRequest._() : super();
  factory ListTournamentRecordsAroundOwnerRequest() => create();
  factory ListTournamentRecordsAroundOwnerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTournamentRecordsAroundOwnerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListTournamentRecordsAroundOwnerRequest clone() => ListTournamentRecordsAroundOwnerRequest()..mergeFromMessage(this);
  ListTournamentRecordsAroundOwnerRequest copyWith(void Function(ListTournamentRecordsAroundOwnerRequest) updates) => super.copyWith((message) => updates(message as ListTournamentRecordsAroundOwnerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTournamentRecordsAroundOwnerRequest create() => ListTournamentRecordsAroundOwnerRequest._();
  ListTournamentRecordsAroundOwnerRequest createEmptyInstance() => create();
  static $pb.PbList<ListTournamentRecordsAroundOwnerRequest> createRepeated() => $pb.PbList<ListTournamentRecordsAroundOwnerRequest>();
  static ListTournamentRecordsAroundOwnerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListTournamentRecordsAroundOwnerRequest _defaultInstance;

  $core.String get tournamentId => $_getS(0, '');
  set tournamentId($core.String v) { $_setString(0, v); }
  $core.bool hasTournamentId() => $_has(0);
  void clearTournamentId() => clearField(1);

  $3.UInt32Value get limit => $_getN(1);
  set limit($3.UInt32Value v) { setField(2, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  $core.String get ownerId => $_getS(2, '');
  set ownerId($core.String v) { $_setString(2, v); }
  $core.bool hasOwnerId() => $_has(2);
  void clearOwnerId() => clearField(3);

  $3.Int64Value get expiry => $_getN(3);
  set expiry($3.Int64Value v) { setField(4, v); }
  $core.bool hasExpiry() => $_has(3);
  void clearExpiry() => clearField(4);
}

class ListTournamentRecordsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListTournamentRecordsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'tournamentId')
    ..pPS(2, 'ownerIds')
    ..a<$3.Int32Value>(3, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(4, 'cursor')
    ..a<$3.Int64Value>(5, 'expiry', $pb.PbFieldType.OM, defaultOrMaker: $3.Int64Value.getDefault, subBuilder: $3.Int64Value.create)
    ..hasRequiredFields = false
  ;

  ListTournamentRecordsRequest._() : super();
  factory ListTournamentRecordsRequest() => create();
  factory ListTournamentRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTournamentRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListTournamentRecordsRequest clone() => ListTournamentRecordsRequest()..mergeFromMessage(this);
  ListTournamentRecordsRequest copyWith(void Function(ListTournamentRecordsRequest) updates) => super.copyWith((message) => updates(message as ListTournamentRecordsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTournamentRecordsRequest create() => ListTournamentRecordsRequest._();
  ListTournamentRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<ListTournamentRecordsRequest> createRepeated() => $pb.PbList<ListTournamentRecordsRequest>();
  static ListTournamentRecordsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListTournamentRecordsRequest _defaultInstance;

  $core.String get tournamentId => $_getS(0, '');
  set tournamentId($core.String v) { $_setString(0, v); }
  $core.bool hasTournamentId() => $_has(0);
  void clearTournamentId() => clearField(1);

  $core.List<$core.String> get ownerIds => $_getList(1);

  $3.Int32Value get limit => $_getN(2);
  set limit($3.Int32Value v) { setField(3, v); }
  $core.bool hasLimit() => $_has(2);
  void clearLimit() => clearField(3);

  $core.String get cursor => $_getS(3, '');
  set cursor($core.String v) { $_setString(3, v); }
  $core.bool hasCursor() => $_has(3);
  void clearCursor() => clearField(4);

  $3.Int64Value get expiry => $_getN(4);
  set expiry($3.Int64Value v) { setField(5, v); }
  $core.bool hasExpiry() => $_has(4);
  void clearExpiry() => clearField(5);
}

class ListTournamentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListTournamentsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<$3.UInt32Value>(1, 'categoryStart', $pb.PbFieldType.OM, defaultOrMaker: $3.UInt32Value.getDefault, subBuilder: $3.UInt32Value.create)
    ..a<$3.UInt32Value>(2, 'categoryEnd', $pb.PbFieldType.OM, defaultOrMaker: $3.UInt32Value.getDefault, subBuilder: $3.UInt32Value.create)
    ..a<$3.UInt32Value>(3, 'startTime', $pb.PbFieldType.OM, defaultOrMaker: $3.UInt32Value.getDefault, subBuilder: $3.UInt32Value.create)
    ..a<$3.UInt32Value>(4, 'endTime', $pb.PbFieldType.OM, defaultOrMaker: $3.UInt32Value.getDefault, subBuilder: $3.UInt32Value.create)
    ..a<$3.Int32Value>(6, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(8, 'cursor')
    ..hasRequiredFields = false
  ;

  ListTournamentsRequest._() : super();
  factory ListTournamentsRequest() => create();
  factory ListTournamentsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTournamentsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListTournamentsRequest clone() => ListTournamentsRequest()..mergeFromMessage(this);
  ListTournamentsRequest copyWith(void Function(ListTournamentsRequest) updates) => super.copyWith((message) => updates(message as ListTournamentsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTournamentsRequest create() => ListTournamentsRequest._();
  ListTournamentsRequest createEmptyInstance() => create();
  static $pb.PbList<ListTournamentsRequest> createRepeated() => $pb.PbList<ListTournamentsRequest>();
  static ListTournamentsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListTournamentsRequest _defaultInstance;

  $3.UInt32Value get categoryStart => $_getN(0);
  set categoryStart($3.UInt32Value v) { setField(1, v); }
  $core.bool hasCategoryStart() => $_has(0);
  void clearCategoryStart() => clearField(1);

  $3.UInt32Value get categoryEnd => $_getN(1);
  set categoryEnd($3.UInt32Value v) { setField(2, v); }
  $core.bool hasCategoryEnd() => $_has(1);
  void clearCategoryEnd() => clearField(2);

  $3.UInt32Value get startTime => $_getN(2);
  set startTime($3.UInt32Value v) { setField(3, v); }
  $core.bool hasStartTime() => $_has(2);
  void clearStartTime() => clearField(3);

  $3.UInt32Value get endTime => $_getN(3);
  set endTime($3.UInt32Value v) { setField(4, v); }
  $core.bool hasEndTime() => $_has(3);
  void clearEndTime() => clearField(4);

  $3.Int32Value get limit => $_getN(4);
  set limit($3.Int32Value v) { setField(6, v); }
  $core.bool hasLimit() => $_has(4);
  void clearLimit() => clearField(6);

  $core.String get cursor => $_getS(5, '');
  set cursor($core.String v) { $_setString(5, v); }
  $core.bool hasCursor() => $_has(5);
  void clearCursor() => clearField(8);
}

class ListUserGroupsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListUserGroupsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..a<$3.Int32Value>(2, 'limit', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.Int32Value>(3, 'state', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..aOS(4, 'cursor')
    ..hasRequiredFields = false
  ;

  ListUserGroupsRequest._() : super();
  factory ListUserGroupsRequest() => create();
  factory ListUserGroupsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUserGroupsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListUserGroupsRequest clone() => ListUserGroupsRequest()..mergeFromMessage(this);
  ListUserGroupsRequest copyWith(void Function(ListUserGroupsRequest) updates) => super.copyWith((message) => updates(message as ListUserGroupsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUserGroupsRequest create() => ListUserGroupsRequest._();
  ListUserGroupsRequest createEmptyInstance() => create();
  static $pb.PbList<ListUserGroupsRequest> createRepeated() => $pb.PbList<ListUserGroupsRequest>();
  static ListUserGroupsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListUserGroupsRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  $3.Int32Value get limit => $_getN(1);
  set limit($3.Int32Value v) { setField(2, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  $3.Int32Value get state => $_getN(2);
  set state($3.Int32Value v) { setField(3, v); }
  $core.bool hasState() => $_has(2);
  void clearState() => clearField(3);

  $core.String get cursor => $_getS(3, '');
  set cursor($core.String v) { $_setString(3, v); }
  $core.bool hasCursor() => $_has(3);
  void clearCursor() => clearField(4);
}

class Match extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Match', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'matchId')
    ..aOB(2, 'authoritative')
    ..a<$3.StringValue>(3, 'label', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$core.int>(4, 'size', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Match._() : super();
  factory Match() => create();
  factory Match.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Match.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Match clone() => Match()..mergeFromMessage(this);
  Match copyWith(void Function(Match) updates) => super.copyWith((message) => updates(message as Match));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Match create() => Match._();
  Match createEmptyInstance() => create();
  static $pb.PbList<Match> createRepeated() => $pb.PbList<Match>();
  static Match getDefault() => _defaultInstance ??= create()..freeze();
  static Match _defaultInstance;

  $core.String get matchId => $_getS(0, '');
  set matchId($core.String v) { $_setString(0, v); }
  $core.bool hasMatchId() => $_has(0);
  void clearMatchId() => clearField(1);

  $core.bool get authoritative => $_get(1, false);
  set authoritative($core.bool v) { $_setBool(1, v); }
  $core.bool hasAuthoritative() => $_has(1);
  void clearAuthoritative() => clearField(2);

  $3.StringValue get label => $_getN(2);
  set label($3.StringValue v) { setField(3, v); }
  $core.bool hasLabel() => $_has(2);
  void clearLabel() => clearField(3);

  $core.int get size => $_get(3, 0);
  set size($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasSize() => $_has(3);
  void clearSize() => clearField(4);
}

class MatchList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MatchList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<Match>(1, 'matches', $pb.PbFieldType.PM, subBuilder: Match.create)
    ..hasRequiredFields = false
  ;

  MatchList._() : super();
  factory MatchList() => create();
  factory MatchList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MatchList clone() => MatchList()..mergeFromMessage(this);
  MatchList copyWith(void Function(MatchList) updates) => super.copyWith((message) => updates(message as MatchList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchList create() => MatchList._();
  MatchList createEmptyInstance() => create();
  static $pb.PbList<MatchList> createRepeated() => $pb.PbList<MatchList>();
  static MatchList getDefault() => _defaultInstance ??= create()..freeze();
  static MatchList _defaultInstance;

  $core.List<Match> get matches => $_getList(0);
}

class Notification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Notification', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'subject')
    ..aOS(3, 'content')
    ..a<$core.int>(4, 'code', $pb.PbFieldType.O3)
    ..aOS(5, 'senderId')
    ..a<$2.Timestamp>(6, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..aOB(7, 'persistent')
    ..hasRequiredFields = false
  ;

  Notification._() : super();
  factory Notification() => create();
  factory Notification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Notification clone() => Notification()..mergeFromMessage(this);
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  static Notification getDefault() => _defaultInstance ??= create()..freeze();
  static Notification _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get subject => $_getS(1, '');
  set subject($core.String v) { $_setString(1, v); }
  $core.bool hasSubject() => $_has(1);
  void clearSubject() => clearField(2);

  $core.String get content => $_getS(2, '');
  set content($core.String v) { $_setString(2, v); }
  $core.bool hasContent() => $_has(2);
  void clearContent() => clearField(3);

  $core.int get code => $_get(3, 0);
  set code($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasCode() => $_has(3);
  void clearCode() => clearField(4);

  $core.String get senderId => $_getS(4, '');
  set senderId($core.String v) { $_setString(4, v); }
  $core.bool hasSenderId() => $_has(4);
  void clearSenderId() => clearField(5);

  $2.Timestamp get createTime => $_getN(5);
  set createTime($2.Timestamp v) { setField(6, v); }
  $core.bool hasCreateTime() => $_has(5);
  void clearCreateTime() => clearField(6);

  $core.bool get persistent => $_get(6, false);
  set persistent($core.bool v) { $_setBool(6, v); }
  $core.bool hasPersistent() => $_has(6);
  void clearPersistent() => clearField(7);
}

class NotificationList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<Notification>(1, 'notifications', $pb.PbFieldType.PM, subBuilder: Notification.create)
    ..aOS(2, 'cacheableCursor')
    ..hasRequiredFields = false
  ;

  NotificationList._() : super();
  factory NotificationList() => create();
  factory NotificationList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NotificationList clone() => NotificationList()..mergeFromMessage(this);
  NotificationList copyWith(void Function(NotificationList) updates) => super.copyWith((message) => updates(message as NotificationList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationList create() => NotificationList._();
  NotificationList createEmptyInstance() => create();
  static $pb.PbList<NotificationList> createRepeated() => $pb.PbList<NotificationList>();
  static NotificationList getDefault() => _defaultInstance ??= create()..freeze();
  static NotificationList _defaultInstance;

  $core.List<Notification> get notifications => $_getList(0);

  $core.String get cacheableCursor => $_getS(1, '');
  set cacheableCursor($core.String v) { $_setString(1, v); }
  $core.bool hasCacheableCursor() => $_has(1);
  void clearCacheableCursor() => clearField(2);
}

class PromoteGroupUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PromoteGroupUsersRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..pPS(2, 'userIds')
    ..hasRequiredFields = false
  ;

  PromoteGroupUsersRequest._() : super();
  factory PromoteGroupUsersRequest() => create();
  factory PromoteGroupUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PromoteGroupUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PromoteGroupUsersRequest clone() => PromoteGroupUsersRequest()..mergeFromMessage(this);
  PromoteGroupUsersRequest copyWith(void Function(PromoteGroupUsersRequest) updates) => super.copyWith((message) => updates(message as PromoteGroupUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PromoteGroupUsersRequest create() => PromoteGroupUsersRequest._();
  PromoteGroupUsersRequest createEmptyInstance() => create();
  static $pb.PbList<PromoteGroupUsersRequest> createRepeated() => $pb.PbList<PromoteGroupUsersRequest>();
  static PromoteGroupUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PromoteGroupUsersRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);

  $core.List<$core.String> get userIds => $_getList(1);
}

class ReadStorageObjectId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadStorageObjectId', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'collection')
    ..aOS(2, 'key')
    ..aOS(3, 'userId')
    ..hasRequiredFields = false
  ;

  ReadStorageObjectId._() : super();
  factory ReadStorageObjectId() => create();
  factory ReadStorageObjectId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadStorageObjectId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadStorageObjectId clone() => ReadStorageObjectId()..mergeFromMessage(this);
  ReadStorageObjectId copyWith(void Function(ReadStorageObjectId) updates) => super.copyWith((message) => updates(message as ReadStorageObjectId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadStorageObjectId create() => ReadStorageObjectId._();
  ReadStorageObjectId createEmptyInstance() => create();
  static $pb.PbList<ReadStorageObjectId> createRepeated() => $pb.PbList<ReadStorageObjectId>();
  static ReadStorageObjectId getDefault() => _defaultInstance ??= create()..freeze();
  static ReadStorageObjectId _defaultInstance;

  $core.String get collection => $_getS(0, '');
  set collection($core.String v) { $_setString(0, v); }
  $core.bool hasCollection() => $_has(0);
  void clearCollection() => clearField(1);

  $core.String get key => $_getS(1, '');
  set key($core.String v) { $_setString(1, v); }
  $core.bool hasKey() => $_has(1);
  void clearKey() => clearField(2);

  $core.String get userId => $_getS(2, '');
  set userId($core.String v) { $_setString(2, v); }
  $core.bool hasUserId() => $_has(2);
  void clearUserId() => clearField(3);
}

class ReadStorageObjectsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadStorageObjectsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<ReadStorageObjectId>(1, 'objectIds', $pb.PbFieldType.PM, subBuilder: ReadStorageObjectId.create)
    ..hasRequiredFields = false
  ;

  ReadStorageObjectsRequest._() : super();
  factory ReadStorageObjectsRequest() => create();
  factory ReadStorageObjectsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadStorageObjectsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadStorageObjectsRequest clone() => ReadStorageObjectsRequest()..mergeFromMessage(this);
  ReadStorageObjectsRequest copyWith(void Function(ReadStorageObjectsRequest) updates) => super.copyWith((message) => updates(message as ReadStorageObjectsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadStorageObjectsRequest create() => ReadStorageObjectsRequest._();
  ReadStorageObjectsRequest createEmptyInstance() => create();
  static $pb.PbList<ReadStorageObjectsRequest> createRepeated() => $pb.PbList<ReadStorageObjectsRequest>();
  static ReadStorageObjectsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadStorageObjectsRequest _defaultInstance;

  $core.List<ReadStorageObjectId> get objectIds => $_getList(0);
}

class Rpc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Rpc', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'payload')
    ..aOS(3, 'httpKey')
    ..hasRequiredFields = false
  ;

  Rpc._() : super();
  factory Rpc() => create();
  factory Rpc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rpc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Rpc clone() => Rpc()..mergeFromMessage(this);
  Rpc copyWith(void Function(Rpc) updates) => super.copyWith((message) => updates(message as Rpc));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Rpc create() => Rpc._();
  Rpc createEmptyInstance() => create();
  static $pb.PbList<Rpc> createRepeated() => $pb.PbList<Rpc>();
  static Rpc getDefault() => _defaultInstance ??= create()..freeze();
  static Rpc _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get payload => $_getS(1, '');
  set payload($core.String v) { $_setString(1, v); }
  $core.bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);

  $core.String get httpKey => $_getS(2, '');
  set httpKey($core.String v) { $_setString(2, v); }
  $core.bool hasHttpKey() => $_has(2);
  void clearHttpKey() => clearField(3);
}

class Session extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Session', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOB(1, 'created')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  Session._() : super();
  factory Session() => create();
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Session clone() => Session()..mergeFromMessage(this);
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  static Session getDefault() => _defaultInstance ??= create()..freeze();
  static Session _defaultInstance;

  $core.bool get created => $_get(0, false);
  set created($core.bool v) { $_setBool(0, v); }
  $core.bool hasCreated() => $_has(0);
  void clearCreated() => clearField(1);

  $core.String get token => $_getS(1, '');
  set token($core.String v) { $_setString(1, v); }
  $core.bool hasToken() => $_has(1);
  void clearToken() => clearField(2);
}

class StorageObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StorageObject', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'collection')
    ..aOS(2, 'key')
    ..aOS(3, 'userId')
    ..aOS(4, 'value')
    ..aOS(5, 'version')
    ..a<$core.int>(6, 'permissionRead', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'permissionWrite', $pb.PbFieldType.O3)
    ..a<$2.Timestamp>(8, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(9, 'updateTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  StorageObject._() : super();
  factory StorageObject() => create();
  factory StorageObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StorageObject clone() => StorageObject()..mergeFromMessage(this);
  StorageObject copyWith(void Function(StorageObject) updates) => super.copyWith((message) => updates(message as StorageObject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StorageObject create() => StorageObject._();
  StorageObject createEmptyInstance() => create();
  static $pb.PbList<StorageObject> createRepeated() => $pb.PbList<StorageObject>();
  static StorageObject getDefault() => _defaultInstance ??= create()..freeze();
  static StorageObject _defaultInstance;

  $core.String get collection => $_getS(0, '');
  set collection($core.String v) { $_setString(0, v); }
  $core.bool hasCollection() => $_has(0);
  void clearCollection() => clearField(1);

  $core.String get key => $_getS(1, '');
  set key($core.String v) { $_setString(1, v); }
  $core.bool hasKey() => $_has(1);
  void clearKey() => clearField(2);

  $core.String get userId => $_getS(2, '');
  set userId($core.String v) { $_setString(2, v); }
  $core.bool hasUserId() => $_has(2);
  void clearUserId() => clearField(3);

  $core.String get value => $_getS(3, '');
  set value($core.String v) { $_setString(3, v); }
  $core.bool hasValue() => $_has(3);
  void clearValue() => clearField(4);

  $core.String get version => $_getS(4, '');
  set version($core.String v) { $_setString(4, v); }
  $core.bool hasVersion() => $_has(4);
  void clearVersion() => clearField(5);

  $core.int get permissionRead => $_get(5, 0);
  set permissionRead($core.int v) { $_setSignedInt32(5, v); }
  $core.bool hasPermissionRead() => $_has(5);
  void clearPermissionRead() => clearField(6);

  $core.int get permissionWrite => $_get(6, 0);
  set permissionWrite($core.int v) { $_setSignedInt32(6, v); }
  $core.bool hasPermissionWrite() => $_has(6);
  void clearPermissionWrite() => clearField(7);

  $2.Timestamp get createTime => $_getN(7);
  set createTime($2.Timestamp v) { setField(8, v); }
  $core.bool hasCreateTime() => $_has(7);
  void clearCreateTime() => clearField(8);

  $2.Timestamp get updateTime => $_getN(8);
  set updateTime($2.Timestamp v) { setField(9, v); }
  $core.bool hasUpdateTime() => $_has(8);
  void clearUpdateTime() => clearField(9);
}

class StorageObjectAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StorageObjectAck', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'collection')
    ..aOS(2, 'key')
    ..aOS(3, 'version')
    ..aOS(4, 'userId')
    ..hasRequiredFields = false
  ;

  StorageObjectAck._() : super();
  factory StorageObjectAck() => create();
  factory StorageObjectAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageObjectAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StorageObjectAck clone() => StorageObjectAck()..mergeFromMessage(this);
  StorageObjectAck copyWith(void Function(StorageObjectAck) updates) => super.copyWith((message) => updates(message as StorageObjectAck));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StorageObjectAck create() => StorageObjectAck._();
  StorageObjectAck createEmptyInstance() => create();
  static $pb.PbList<StorageObjectAck> createRepeated() => $pb.PbList<StorageObjectAck>();
  static StorageObjectAck getDefault() => _defaultInstance ??= create()..freeze();
  static StorageObjectAck _defaultInstance;

  $core.String get collection => $_getS(0, '');
  set collection($core.String v) { $_setString(0, v); }
  $core.bool hasCollection() => $_has(0);
  void clearCollection() => clearField(1);

  $core.String get key => $_getS(1, '');
  set key($core.String v) { $_setString(1, v); }
  $core.bool hasKey() => $_has(1);
  void clearKey() => clearField(2);

  $core.String get version => $_getS(2, '');
  set version($core.String v) { $_setString(2, v); }
  $core.bool hasVersion() => $_has(2);
  void clearVersion() => clearField(3);

  $core.String get userId => $_getS(3, '');
  set userId($core.String v) { $_setString(3, v); }
  $core.bool hasUserId() => $_has(3);
  void clearUserId() => clearField(4);
}

class StorageObjectAcks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StorageObjectAcks', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<StorageObjectAck>(1, 'acks', $pb.PbFieldType.PM, subBuilder: StorageObjectAck.create)
    ..hasRequiredFields = false
  ;

  StorageObjectAcks._() : super();
  factory StorageObjectAcks() => create();
  factory StorageObjectAcks.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageObjectAcks.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StorageObjectAcks clone() => StorageObjectAcks()..mergeFromMessage(this);
  StorageObjectAcks copyWith(void Function(StorageObjectAcks) updates) => super.copyWith((message) => updates(message as StorageObjectAcks));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StorageObjectAcks create() => StorageObjectAcks._();
  StorageObjectAcks createEmptyInstance() => create();
  static $pb.PbList<StorageObjectAcks> createRepeated() => $pb.PbList<StorageObjectAcks>();
  static StorageObjectAcks getDefault() => _defaultInstance ??= create()..freeze();
  static StorageObjectAcks _defaultInstance;

  $core.List<StorageObjectAck> get acks => $_getList(0);
}

class StorageObjects extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StorageObjects', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<StorageObject>(1, 'objects', $pb.PbFieldType.PM, subBuilder: StorageObject.create)
    ..hasRequiredFields = false
  ;

  StorageObjects._() : super();
  factory StorageObjects() => create();
  factory StorageObjects.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageObjects.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StorageObjects clone() => StorageObjects()..mergeFromMessage(this);
  StorageObjects copyWith(void Function(StorageObjects) updates) => super.copyWith((message) => updates(message as StorageObjects));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StorageObjects create() => StorageObjects._();
  StorageObjects createEmptyInstance() => create();
  static $pb.PbList<StorageObjects> createRepeated() => $pb.PbList<StorageObjects>();
  static StorageObjects getDefault() => _defaultInstance ??= create()..freeze();
  static StorageObjects _defaultInstance;

  $core.List<StorageObject> get objects => $_getList(0);
}

class StorageObjectList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StorageObjectList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<StorageObject>(1, 'objects', $pb.PbFieldType.PM, subBuilder: StorageObject.create)
    ..aOS(2, 'cursor')
    ..hasRequiredFields = false
  ;

  StorageObjectList._() : super();
  factory StorageObjectList() => create();
  factory StorageObjectList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageObjectList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StorageObjectList clone() => StorageObjectList()..mergeFromMessage(this);
  StorageObjectList copyWith(void Function(StorageObjectList) updates) => super.copyWith((message) => updates(message as StorageObjectList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StorageObjectList create() => StorageObjectList._();
  StorageObjectList createEmptyInstance() => create();
  static $pb.PbList<StorageObjectList> createRepeated() => $pb.PbList<StorageObjectList>();
  static StorageObjectList getDefault() => _defaultInstance ??= create()..freeze();
  static StorageObjectList _defaultInstance;

  $core.List<StorageObject> get objects => $_getList(0);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);
}

class Tournament extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tournament', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.int>(4, 'category', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'sortOrder', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'size', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'maxSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'maxNumScore', $pb.PbFieldType.OU3)
    ..aOB(9, 'canEnter')
    ..a<$core.int>(10, 'endActive', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, 'nextReset', $pb.PbFieldType.OU3)
    ..aOS(12, 'metadata')
    ..a<$2.Timestamp>(13, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(14, 'startTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(15, 'endTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$core.int>(16, 'duration', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, 'startActive', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Tournament._() : super();
  factory Tournament() => create();
  factory Tournament.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tournament.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Tournament clone() => Tournament()..mergeFromMessage(this);
  Tournament copyWith(void Function(Tournament) updates) => super.copyWith((message) => updates(message as Tournament));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tournament create() => Tournament._();
  Tournament createEmptyInstance() => create();
  static $pb.PbList<Tournament> createRepeated() => $pb.PbList<Tournament>();
  static Tournament getDefault() => _defaultInstance ??= create()..freeze();
  static Tournament _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get title => $_getS(1, '');
  set title($core.String v) { $_setString(1, v); }
  $core.bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  $core.String get description => $_getS(2, '');
  set description($core.String v) { $_setString(2, v); }
  $core.bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);

  $core.int get category => $_get(3, 0);
  set category($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasCategory() => $_has(3);
  void clearCategory() => clearField(4);

  $core.int get sortOrder => $_get(4, 0);
  set sortOrder($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasSortOrder() => $_has(4);
  void clearSortOrder() => clearField(5);

  $core.int get size => $_get(5, 0);
  set size($core.int v) { $_setUnsignedInt32(5, v); }
  $core.bool hasSize() => $_has(5);
  void clearSize() => clearField(6);

  $core.int get maxSize => $_get(6, 0);
  set maxSize($core.int v) { $_setUnsignedInt32(6, v); }
  $core.bool hasMaxSize() => $_has(6);
  void clearMaxSize() => clearField(7);

  $core.int get maxNumScore => $_get(7, 0);
  set maxNumScore($core.int v) { $_setUnsignedInt32(7, v); }
  $core.bool hasMaxNumScore() => $_has(7);
  void clearMaxNumScore() => clearField(8);

  $core.bool get canEnter => $_get(8, false);
  set canEnter($core.bool v) { $_setBool(8, v); }
  $core.bool hasCanEnter() => $_has(8);
  void clearCanEnter() => clearField(9);

  $core.int get endActive => $_get(9, 0);
  set endActive($core.int v) { $_setUnsignedInt32(9, v); }
  $core.bool hasEndActive() => $_has(9);
  void clearEndActive() => clearField(10);

  $core.int get nextReset => $_get(10, 0);
  set nextReset($core.int v) { $_setUnsignedInt32(10, v); }
  $core.bool hasNextReset() => $_has(10);
  void clearNextReset() => clearField(11);

  $core.String get metadata => $_getS(11, '');
  set metadata($core.String v) { $_setString(11, v); }
  $core.bool hasMetadata() => $_has(11);
  void clearMetadata() => clearField(12);

  $2.Timestamp get createTime => $_getN(12);
  set createTime($2.Timestamp v) { setField(13, v); }
  $core.bool hasCreateTime() => $_has(12);
  void clearCreateTime() => clearField(13);

  $2.Timestamp get startTime => $_getN(13);
  set startTime($2.Timestamp v) { setField(14, v); }
  $core.bool hasStartTime() => $_has(13);
  void clearStartTime() => clearField(14);

  $2.Timestamp get endTime => $_getN(14);
  set endTime($2.Timestamp v) { setField(15, v); }
  $core.bool hasEndTime() => $_has(14);
  void clearEndTime() => clearField(15);

  $core.int get duration => $_get(15, 0);
  set duration($core.int v) { $_setUnsignedInt32(15, v); }
  $core.bool hasDuration() => $_has(15);
  void clearDuration() => clearField(16);

  $core.int get startActive => $_get(16, 0);
  set startActive($core.int v) { $_setUnsignedInt32(16, v); }
  $core.bool hasStartActive() => $_has(16);
  void clearStartActive() => clearField(17);
}

class TournamentList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TournamentList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<Tournament>(1, 'tournaments', $pb.PbFieldType.PM, subBuilder: Tournament.create)
    ..aOS(2, 'cursor')
    ..hasRequiredFields = false
  ;

  TournamentList._() : super();
  factory TournamentList() => create();
  factory TournamentList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TournamentList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TournamentList clone() => TournamentList()..mergeFromMessage(this);
  TournamentList copyWith(void Function(TournamentList) updates) => super.copyWith((message) => updates(message as TournamentList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TournamentList create() => TournamentList._();
  TournamentList createEmptyInstance() => create();
  static $pb.PbList<TournamentList> createRepeated() => $pb.PbList<TournamentList>();
  static TournamentList getDefault() => _defaultInstance ??= create()..freeze();
  static TournamentList _defaultInstance;

  $core.List<Tournament> get tournaments => $_getList(0);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);
}

class TournamentRecordList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TournamentRecordList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<LeaderboardRecord>(1, 'records', $pb.PbFieldType.PM, subBuilder: LeaderboardRecord.create)
    ..pc<LeaderboardRecord>(2, 'ownerRecords', $pb.PbFieldType.PM, subBuilder: LeaderboardRecord.create)
    ..aOS(3, 'nextCursor')
    ..aOS(4, 'prevCursor')
    ..hasRequiredFields = false
  ;

  TournamentRecordList._() : super();
  factory TournamentRecordList() => create();
  factory TournamentRecordList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TournamentRecordList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TournamentRecordList clone() => TournamentRecordList()..mergeFromMessage(this);
  TournamentRecordList copyWith(void Function(TournamentRecordList) updates) => super.copyWith((message) => updates(message as TournamentRecordList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TournamentRecordList create() => TournamentRecordList._();
  TournamentRecordList createEmptyInstance() => create();
  static $pb.PbList<TournamentRecordList> createRepeated() => $pb.PbList<TournamentRecordList>();
  static TournamentRecordList getDefault() => _defaultInstance ??= create()..freeze();
  static TournamentRecordList _defaultInstance;

  $core.List<LeaderboardRecord> get records => $_getList(0);

  $core.List<LeaderboardRecord> get ownerRecords => $_getList(1);

  $core.String get nextCursor => $_getS(2, '');
  set nextCursor($core.String v) { $_setString(2, v); }
  $core.bool hasNextCursor() => $_has(2);
  void clearNextCursor() => clearField(3);

  $core.String get prevCursor => $_getS(3, '');
  set prevCursor($core.String v) { $_setString(3, v); }
  $core.bool hasPrevCursor() => $_has(3);
  void clearPrevCursor() => clearField(4);
}

class UpdateAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateAccountRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<$3.StringValue>(1, 'username', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(2, 'displayName', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(3, 'avatarUrl', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(4, 'langTag', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(5, 'location', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(6, 'timezone', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..hasRequiredFields = false
  ;

  UpdateAccountRequest._() : super();
  factory UpdateAccountRequest() => create();
  factory UpdateAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateAccountRequest clone() => UpdateAccountRequest()..mergeFromMessage(this);
  UpdateAccountRequest copyWith(void Function(UpdateAccountRequest) updates) => super.copyWith((message) => updates(message as UpdateAccountRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAccountRequest create() => UpdateAccountRequest._();
  UpdateAccountRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountRequest> createRepeated() => $pb.PbList<UpdateAccountRequest>();
  static UpdateAccountRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateAccountRequest _defaultInstance;

  $3.StringValue get username => $_getN(0);
  set username($3.StringValue v) { setField(1, v); }
  $core.bool hasUsername() => $_has(0);
  void clearUsername() => clearField(1);

  $3.StringValue get displayName => $_getN(1);
  set displayName($3.StringValue v) { setField(2, v); }
  $core.bool hasDisplayName() => $_has(1);
  void clearDisplayName() => clearField(2);

  $3.StringValue get avatarUrl => $_getN(2);
  set avatarUrl($3.StringValue v) { setField(3, v); }
  $core.bool hasAvatarUrl() => $_has(2);
  void clearAvatarUrl() => clearField(3);

  $3.StringValue get langTag => $_getN(3);
  set langTag($3.StringValue v) { setField(4, v); }
  $core.bool hasLangTag() => $_has(3);
  void clearLangTag() => clearField(4);

  $3.StringValue get location => $_getN(4);
  set location($3.StringValue v) { setField(5, v); }
  $core.bool hasLocation() => $_has(4);
  void clearLocation() => clearField(5);

  $3.StringValue get timezone => $_getN(5);
  set timezone($3.StringValue v) { setField(6, v); }
  $core.bool hasTimezone() => $_has(5);
  void clearTimezone() => clearField(6);
}

class UpdateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'groupId')
    ..a<$3.StringValue>(2, 'name', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(3, 'description', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(4, 'langTag', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.StringValue>(5, 'avatarUrl', $pb.PbFieldType.OM, defaultOrMaker: $3.StringValue.getDefault, subBuilder: $3.StringValue.create)
    ..a<$3.BoolValue>(6, 'open', $pb.PbFieldType.OM, defaultOrMaker: $3.BoolValue.getDefault, subBuilder: $3.BoolValue.create)
    ..hasRequiredFields = false
  ;

  UpdateGroupRequest._() : super();
  factory UpdateGroupRequest() => create();
  factory UpdateGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateGroupRequest clone() => UpdateGroupRequest()..mergeFromMessage(this);
  UpdateGroupRequest copyWith(void Function(UpdateGroupRequest) updates) => super.copyWith((message) => updates(message as UpdateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest create() => UpdateGroupRequest._();
  UpdateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupRequest> createRepeated() => $pb.PbList<UpdateGroupRequest>();
  static UpdateGroupRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateGroupRequest _defaultInstance;

  $core.String get groupId => $_getS(0, '');
  set groupId($core.String v) { $_setString(0, v); }
  $core.bool hasGroupId() => $_has(0);
  void clearGroupId() => clearField(1);

  $3.StringValue get name => $_getN(1);
  set name($3.StringValue v) { setField(2, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $3.StringValue get description => $_getN(2);
  set description($3.StringValue v) { setField(3, v); }
  $core.bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);

  $3.StringValue get langTag => $_getN(3);
  set langTag($3.StringValue v) { setField(4, v); }
  $core.bool hasLangTag() => $_has(3);
  void clearLangTag() => clearField(4);

  $3.StringValue get avatarUrl => $_getN(4);
  set avatarUrl($3.StringValue v) { setField(5, v); }
  $core.bool hasAvatarUrl() => $_has(4);
  void clearAvatarUrl() => clearField(5);

  $3.BoolValue get open => $_getN(5);
  set open($3.BoolValue v) { setField(6, v); }
  $core.bool hasOpen() => $_has(5);
  void clearOpen() => clearField(6);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'username')
    ..aOS(3, 'displayName')
    ..aOS(4, 'avatarUrl')
    ..aOS(5, 'langTag')
    ..aOS(6, 'location')
    ..aOS(7, 'timezone')
    ..aOS(8, 'metadata')
    ..aOS(9, 'facebookId')
    ..aOS(10, 'googleId')
    ..aOS(11, 'gamecenterId')
    ..aOS(12, 'steamId')
    ..aOB(13, 'online')
    ..a<$core.int>(14, 'edgeCount', $pb.PbFieldType.O3)
    ..a<$2.Timestamp>(15, 'createTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..a<$2.Timestamp>(16, 'updateTime', $pb.PbFieldType.OM, defaultOrMaker: $2.Timestamp.getDefault, subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  static User getDefault() => _defaultInstance ??= create()..freeze();
  static User _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get username => $_getS(1, '');
  set username($core.String v) { $_setString(1, v); }
  $core.bool hasUsername() => $_has(1);
  void clearUsername() => clearField(2);

  $core.String get displayName => $_getS(2, '');
  set displayName($core.String v) { $_setString(2, v); }
  $core.bool hasDisplayName() => $_has(2);
  void clearDisplayName() => clearField(3);

  $core.String get avatarUrl => $_getS(3, '');
  set avatarUrl($core.String v) { $_setString(3, v); }
  $core.bool hasAvatarUrl() => $_has(3);
  void clearAvatarUrl() => clearField(4);

  $core.String get langTag => $_getS(4, '');
  set langTag($core.String v) { $_setString(4, v); }
  $core.bool hasLangTag() => $_has(4);
  void clearLangTag() => clearField(5);

  $core.String get location => $_getS(5, '');
  set location($core.String v) { $_setString(5, v); }
  $core.bool hasLocation() => $_has(5);
  void clearLocation() => clearField(6);

  $core.String get timezone => $_getS(6, '');
  set timezone($core.String v) { $_setString(6, v); }
  $core.bool hasTimezone() => $_has(6);
  void clearTimezone() => clearField(7);

  $core.String get metadata => $_getS(7, '');
  set metadata($core.String v) { $_setString(7, v); }
  $core.bool hasMetadata() => $_has(7);
  void clearMetadata() => clearField(8);

  $core.String get facebookId => $_getS(8, '');
  set facebookId($core.String v) { $_setString(8, v); }
  $core.bool hasFacebookId() => $_has(8);
  void clearFacebookId() => clearField(9);

  $core.String get googleId => $_getS(9, '');
  set googleId($core.String v) { $_setString(9, v); }
  $core.bool hasGoogleId() => $_has(9);
  void clearGoogleId() => clearField(10);

  $core.String get gamecenterId => $_getS(10, '');
  set gamecenterId($core.String v) { $_setString(10, v); }
  $core.bool hasGamecenterId() => $_has(10);
  void clearGamecenterId() => clearField(11);

  $core.String get steamId => $_getS(11, '');
  set steamId($core.String v) { $_setString(11, v); }
  $core.bool hasSteamId() => $_has(11);
  void clearSteamId() => clearField(12);

  $core.bool get online => $_get(12, false);
  set online($core.bool v) { $_setBool(12, v); }
  $core.bool hasOnline() => $_has(12);
  void clearOnline() => clearField(13);

  $core.int get edgeCount => $_get(13, 0);
  set edgeCount($core.int v) { $_setSignedInt32(13, v); }
  $core.bool hasEdgeCount() => $_has(13);
  void clearEdgeCount() => clearField(14);

  $2.Timestamp get createTime => $_getN(14);
  set createTime($2.Timestamp v) { setField(15, v); }
  $core.bool hasCreateTime() => $_has(14);
  void clearCreateTime() => clearField(15);

  $2.Timestamp get updateTime => $_getN(15);
  set updateTime($2.Timestamp v) { setField(16, v); }
  $core.bool hasUpdateTime() => $_has(15);
  void clearUpdateTime() => clearField(16);
}

class UserGroupList_UserGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserGroupList.UserGroup', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..a<Group>(1, 'group', $pb.PbFieldType.OM, defaultOrMaker: Group.getDefault, subBuilder: Group.create)
    ..a<$3.Int32Value>(2, 'state', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..hasRequiredFields = false
  ;

  UserGroupList_UserGroup._() : super();
  factory UserGroupList_UserGroup() => create();
  factory UserGroupList_UserGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGroupList_UserGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserGroupList_UserGroup clone() => UserGroupList_UserGroup()..mergeFromMessage(this);
  UserGroupList_UserGroup copyWith(void Function(UserGroupList_UserGroup) updates) => super.copyWith((message) => updates(message as UserGroupList_UserGroup));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserGroupList_UserGroup create() => UserGroupList_UserGroup._();
  UserGroupList_UserGroup createEmptyInstance() => create();
  static $pb.PbList<UserGroupList_UserGroup> createRepeated() => $pb.PbList<UserGroupList_UserGroup>();
  static UserGroupList_UserGroup getDefault() => _defaultInstance ??= create()..freeze();
  static UserGroupList_UserGroup _defaultInstance;

  Group get group => $_getN(0);
  set group(Group v) { setField(1, v); }
  $core.bool hasGroup() => $_has(0);
  void clearGroup() => clearField(1);

  $3.Int32Value get state => $_getN(1);
  set state($3.Int32Value v) { setField(2, v); }
  $core.bool hasState() => $_has(1);
  void clearState() => clearField(2);
}

class UserGroupList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserGroupList', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<UserGroupList_UserGroup>(1, 'userGroups', $pb.PbFieldType.PM, subBuilder: UserGroupList_UserGroup.create)
    ..aOS(2, 'cursor')
    ..hasRequiredFields = false
  ;

  UserGroupList._() : super();
  factory UserGroupList() => create();
  factory UserGroupList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGroupList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserGroupList clone() => UserGroupList()..mergeFromMessage(this);
  UserGroupList copyWith(void Function(UserGroupList) updates) => super.copyWith((message) => updates(message as UserGroupList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserGroupList create() => UserGroupList._();
  UserGroupList createEmptyInstance() => create();
  static $pb.PbList<UserGroupList> createRepeated() => $pb.PbList<UserGroupList>();
  static UserGroupList getDefault() => _defaultInstance ??= create()..freeze();
  static UserGroupList _defaultInstance;

  $core.List<UserGroupList_UserGroup> get userGroups => $_getList(0);

  $core.String get cursor => $_getS(1, '');
  set cursor($core.String v) { $_setString(1, v); }
  $core.bool hasCursor() => $_has(1);
  void clearCursor() => clearField(2);
}

class Users extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Users', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<User>(1, 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  Users._() : super();
  factory Users() => create();
  factory Users.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Users.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Users clone() => Users()..mergeFromMessage(this);
  Users copyWith(void Function(Users) updates) => super.copyWith((message) => updates(message as Users));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Users create() => Users._();
  Users createEmptyInstance() => create();
  static $pb.PbList<Users> createRepeated() => $pb.PbList<Users>();
  static Users getDefault() => _defaultInstance ??= create()..freeze();
  static Users _defaultInstance;

  $core.List<User> get users => $_getList(0);
}

class WriteLeaderboardRecordRequest_LeaderboardRecordWrite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteLeaderboardRecordRequest.LeaderboardRecordWrite', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aInt64(1, 'score')
    ..aInt64(2, 'subscore')
    ..aOS(3, 'metadata')
    ..hasRequiredFields = false
  ;

  WriteLeaderboardRecordRequest_LeaderboardRecordWrite._() : super();
  factory WriteLeaderboardRecordRequest_LeaderboardRecordWrite() => create();
  factory WriteLeaderboardRecordRequest_LeaderboardRecordWrite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteLeaderboardRecordRequest_LeaderboardRecordWrite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteLeaderboardRecordRequest_LeaderboardRecordWrite clone() => WriteLeaderboardRecordRequest_LeaderboardRecordWrite()..mergeFromMessage(this);
  WriteLeaderboardRecordRequest_LeaderboardRecordWrite copyWith(void Function(WriteLeaderboardRecordRequest_LeaderboardRecordWrite) updates) => super.copyWith((message) => updates(message as WriteLeaderboardRecordRequest_LeaderboardRecordWrite));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteLeaderboardRecordRequest_LeaderboardRecordWrite create() => WriteLeaderboardRecordRequest_LeaderboardRecordWrite._();
  WriteLeaderboardRecordRequest_LeaderboardRecordWrite createEmptyInstance() => create();
  static $pb.PbList<WriteLeaderboardRecordRequest_LeaderboardRecordWrite> createRepeated() => $pb.PbList<WriteLeaderboardRecordRequest_LeaderboardRecordWrite>();
  static WriteLeaderboardRecordRequest_LeaderboardRecordWrite getDefault() => _defaultInstance ??= create()..freeze();
  static WriteLeaderboardRecordRequest_LeaderboardRecordWrite _defaultInstance;

  Int64 get score => $_getI64(0);
  set score(Int64 v) { $_setInt64(0, v); }
  $core.bool hasScore() => $_has(0);
  void clearScore() => clearField(1);

  Int64 get subscore => $_getI64(1);
  set subscore(Int64 v) { $_setInt64(1, v); }
  $core.bool hasSubscore() => $_has(1);
  void clearSubscore() => clearField(2);

  $core.String get metadata => $_getS(2, '');
  set metadata($core.String v) { $_setString(2, v); }
  $core.bool hasMetadata() => $_has(2);
  void clearMetadata() => clearField(3);
}

class WriteLeaderboardRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteLeaderboardRecordRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'leaderboardId')
    ..a<WriteLeaderboardRecordRequest_LeaderboardRecordWrite>(2, 'record', $pb.PbFieldType.OM, defaultOrMaker: WriteLeaderboardRecordRequest_LeaderboardRecordWrite.getDefault, subBuilder: WriteLeaderboardRecordRequest_LeaderboardRecordWrite.create)
    ..hasRequiredFields = false
  ;

  WriteLeaderboardRecordRequest._() : super();
  factory WriteLeaderboardRecordRequest() => create();
  factory WriteLeaderboardRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteLeaderboardRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteLeaderboardRecordRequest clone() => WriteLeaderboardRecordRequest()..mergeFromMessage(this);
  WriteLeaderboardRecordRequest copyWith(void Function(WriteLeaderboardRecordRequest) updates) => super.copyWith((message) => updates(message as WriteLeaderboardRecordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteLeaderboardRecordRequest create() => WriteLeaderboardRecordRequest._();
  WriteLeaderboardRecordRequest createEmptyInstance() => create();
  static $pb.PbList<WriteLeaderboardRecordRequest> createRepeated() => $pb.PbList<WriteLeaderboardRecordRequest>();
  static WriteLeaderboardRecordRequest getDefault() => _defaultInstance ??= create()..freeze();
  static WriteLeaderboardRecordRequest _defaultInstance;

  $core.String get leaderboardId => $_getS(0, '');
  set leaderboardId($core.String v) { $_setString(0, v); }
  $core.bool hasLeaderboardId() => $_has(0);
  void clearLeaderboardId() => clearField(1);

  WriteLeaderboardRecordRequest_LeaderboardRecordWrite get record => $_getN(1);
  set record(WriteLeaderboardRecordRequest_LeaderboardRecordWrite v) { setField(2, v); }
  $core.bool hasRecord() => $_has(1);
  void clearRecord() => clearField(2);
}

class WriteStorageObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteStorageObject', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'collection')
    ..aOS(2, 'key')
    ..aOS(3, 'value')
    ..aOS(4, 'version')
    ..a<$3.Int32Value>(5, 'permissionRead', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..a<$3.Int32Value>(6, 'permissionWrite', $pb.PbFieldType.OM, defaultOrMaker: $3.Int32Value.getDefault, subBuilder: $3.Int32Value.create)
    ..hasRequiredFields = false
  ;

  WriteStorageObject._() : super();
  factory WriteStorageObject() => create();
  factory WriteStorageObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteStorageObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteStorageObject clone() => WriteStorageObject()..mergeFromMessage(this);
  WriteStorageObject copyWith(void Function(WriteStorageObject) updates) => super.copyWith((message) => updates(message as WriteStorageObject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteStorageObject create() => WriteStorageObject._();
  WriteStorageObject createEmptyInstance() => create();
  static $pb.PbList<WriteStorageObject> createRepeated() => $pb.PbList<WriteStorageObject>();
  static WriteStorageObject getDefault() => _defaultInstance ??= create()..freeze();
  static WriteStorageObject _defaultInstance;

  $core.String get collection => $_getS(0, '');
  set collection($core.String v) { $_setString(0, v); }
  $core.bool hasCollection() => $_has(0);
  void clearCollection() => clearField(1);

  $core.String get key => $_getS(1, '');
  set key($core.String v) { $_setString(1, v); }
  $core.bool hasKey() => $_has(1);
  void clearKey() => clearField(2);

  $core.String get value => $_getS(2, '');
  set value($core.String v) { $_setString(2, v); }
  $core.bool hasValue() => $_has(2);
  void clearValue() => clearField(3);

  $core.String get version => $_getS(3, '');
  set version($core.String v) { $_setString(3, v); }
  $core.bool hasVersion() => $_has(3);
  void clearVersion() => clearField(4);

  $3.Int32Value get permissionRead => $_getN(4);
  set permissionRead($3.Int32Value v) { setField(5, v); }
  $core.bool hasPermissionRead() => $_has(4);
  void clearPermissionRead() => clearField(5);

  $3.Int32Value get permissionWrite => $_getN(5);
  set permissionWrite($3.Int32Value v) { setField(6, v); }
  $core.bool hasPermissionWrite() => $_has(5);
  void clearPermissionWrite() => clearField(6);
}

class WriteStorageObjectsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteStorageObjectsRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..pc<WriteStorageObject>(1, 'objects', $pb.PbFieldType.PM, subBuilder: WriteStorageObject.create)
    ..hasRequiredFields = false
  ;

  WriteStorageObjectsRequest._() : super();
  factory WriteStorageObjectsRequest() => create();
  factory WriteStorageObjectsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteStorageObjectsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteStorageObjectsRequest clone() => WriteStorageObjectsRequest()..mergeFromMessage(this);
  WriteStorageObjectsRequest copyWith(void Function(WriteStorageObjectsRequest) updates) => super.copyWith((message) => updates(message as WriteStorageObjectsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteStorageObjectsRequest create() => WriteStorageObjectsRequest._();
  WriteStorageObjectsRequest createEmptyInstance() => create();
  static $pb.PbList<WriteStorageObjectsRequest> createRepeated() => $pb.PbList<WriteStorageObjectsRequest>();
  static WriteStorageObjectsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static WriteStorageObjectsRequest _defaultInstance;

  $core.List<WriteStorageObject> get objects => $_getList(0);
}

class WriteTournamentRecordRequest_TournamentRecordWrite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteTournamentRecordRequest.TournamentRecordWrite', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aInt64(1, 'score')
    ..aInt64(2, 'subscore')
    ..aOS(3, 'metadata')
    ..hasRequiredFields = false
  ;

  WriteTournamentRecordRequest_TournamentRecordWrite._() : super();
  factory WriteTournamentRecordRequest_TournamentRecordWrite() => create();
  factory WriteTournamentRecordRequest_TournamentRecordWrite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteTournamentRecordRequest_TournamentRecordWrite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteTournamentRecordRequest_TournamentRecordWrite clone() => WriteTournamentRecordRequest_TournamentRecordWrite()..mergeFromMessage(this);
  WriteTournamentRecordRequest_TournamentRecordWrite copyWith(void Function(WriteTournamentRecordRequest_TournamentRecordWrite) updates) => super.copyWith((message) => updates(message as WriteTournamentRecordRequest_TournamentRecordWrite));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteTournamentRecordRequest_TournamentRecordWrite create() => WriteTournamentRecordRequest_TournamentRecordWrite._();
  WriteTournamentRecordRequest_TournamentRecordWrite createEmptyInstance() => create();
  static $pb.PbList<WriteTournamentRecordRequest_TournamentRecordWrite> createRepeated() => $pb.PbList<WriteTournamentRecordRequest_TournamentRecordWrite>();
  static WriteTournamentRecordRequest_TournamentRecordWrite getDefault() => _defaultInstance ??= create()..freeze();
  static WriteTournamentRecordRequest_TournamentRecordWrite _defaultInstance;

  Int64 get score => $_getI64(0);
  set score(Int64 v) { $_setInt64(0, v); }
  $core.bool hasScore() => $_has(0);
  void clearScore() => clearField(1);

  Int64 get subscore => $_getI64(1);
  set subscore(Int64 v) { $_setInt64(1, v); }
  $core.bool hasSubscore() => $_has(1);
  void clearSubscore() => clearField(2);

  $core.String get metadata => $_getS(2, '');
  set metadata($core.String v) { $_setString(2, v); }
  $core.bool hasMetadata() => $_has(2);
  void clearMetadata() => clearField(3);
}

class WriteTournamentRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteTournamentRecordRequest', package: const $pb.PackageName('nakama.api'), createEmptyInstance: create)
    ..aOS(1, 'tournamentId')
    ..a<WriteTournamentRecordRequest_TournamentRecordWrite>(2, 'record', $pb.PbFieldType.OM, defaultOrMaker: WriteTournamentRecordRequest_TournamentRecordWrite.getDefault, subBuilder: WriteTournamentRecordRequest_TournamentRecordWrite.create)
    ..hasRequiredFields = false
  ;

  WriteTournamentRecordRequest._() : super();
  factory WriteTournamentRecordRequest() => create();
  factory WriteTournamentRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WriteTournamentRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WriteTournamentRecordRequest clone() => WriteTournamentRecordRequest()..mergeFromMessage(this);
  WriteTournamentRecordRequest copyWith(void Function(WriteTournamentRecordRequest) updates) => super.copyWith((message) => updates(message as WriteTournamentRecordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteTournamentRecordRequest create() => WriteTournamentRecordRequest._();
  WriteTournamentRecordRequest createEmptyInstance() => create();
  static $pb.PbList<WriteTournamentRecordRequest> createRepeated() => $pb.PbList<WriteTournamentRecordRequest>();
  static WriteTournamentRecordRequest getDefault() => _defaultInstance ??= create()..freeze();
  static WriteTournamentRecordRequest _defaultInstance;

  $core.String get tournamentId => $_getS(0, '');
  set tournamentId($core.String v) { $_setString(0, v); }
  $core.bool hasTournamentId() => $_has(0);
  void clearTournamentId() => clearField(1);

  WriteTournamentRecordRequest_TournamentRecordWrite get record => $_getN(1);
  set record(WriteTournamentRecordRequest_TournamentRecordWrite v) { setField(2, v); }
  $core.bool hasRecord() => $_has(1);
  void clearRecord() => clearField(2);
}

