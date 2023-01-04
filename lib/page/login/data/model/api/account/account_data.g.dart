// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountData> _$accountDataSerializer = new _$AccountDataSerializer();

class _$AccountDataSerializer implements StructuredSerializer<AccountData> {
  @override
  final Iterable<Type> types = const [AccountData, _$AccountData];
  @override
  final String wireName = 'AccountData';

  @override
  Iterable<Object?> serialize(Serializers serializers, AccountData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserData)));
    }
    value = object.access_token;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AccountData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserData))! as UserData);
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountData extends AccountData {
  @override
  final UserData? user;
  @override
  final String? access_token;
  @override
  final bool status;
  @override
  final String message;

  factory _$AccountData([void Function(AccountDataBuilder)? updates]) =>
      (new AccountDataBuilder()..update(updates))._build();

  _$AccountData._(
      {this.user,
      this.access_token,
      required this.status,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'AccountData', 'status');
    BuiltValueNullFieldError.checkNotNull(message, r'AccountData', 'message');
  }

  @override
  AccountData rebuild(void Function(AccountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDataBuilder toBuilder() => new AccountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountData &&
        user == other.user &&
        access_token == other.access_token &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), access_token.hashCode), status.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountData')
          ..add('user', user)
          ..add('access_token', access_token)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AccountDataBuilder implements Builder<AccountData, AccountDataBuilder> {
  _$AccountData? _$v;

  UserDataBuilder? _user;
  UserDataBuilder get user => _$this._user ??= new UserDataBuilder();
  set user(UserDataBuilder? user) => _$this._user = user;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AccountDataBuilder();

  AccountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _access_token = $v.access_token;
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountData;
  }

  @override
  void update(void Function(AccountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountData build() => _build();

  _$AccountData _build() {
    _$AccountData _$result;
    try {
      _$result = _$v ??
          new _$AccountData._(
              user: _user?.build(),
              access_token: access_token,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'AccountData', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'AccountData', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
