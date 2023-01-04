// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserData> _$userDataSerializer = new _$UserDataSerializer();

class _$UserDataSerializer implements StructuredSerializer<UserData> {
  @override
  final Iterable<Type> types = const [UserData, _$UserData];
  @override
  final String wireName = 'UserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workaddress;
    if (value != null) {
      result
        ..add('workaddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'workaddress':
          result.workaddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserData extends UserData {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String? workaddress;
  @override
  final String? image;

  factory _$UserData([void Function(UserDataBuilder)? updates]) =>
      (new UserDataBuilder()..update(updates))._build();

  _$UserData._(
      {required this.id,
      required this.name,
      required this.email,
      this.phone,
      this.workaddress,
      this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'UserData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'UserData', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'UserData', 'email');
  }

  @override
  UserData rebuild(void Function(UserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataBuilder toBuilder() => new UserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserData &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        workaddress == other.workaddress &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), email.hashCode),
                phone.hashCode),
            workaddress.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserData')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('phone', phone)
          ..add('workaddress', workaddress)
          ..add('image', image))
        .toString();
  }
}

class UserDataBuilder implements Builder<UserData, UserDataBuilder> {
  _$UserData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _workaddress;
  String? get workaddress => _$this._workaddress;
  set workaddress(String? workaddress) => _$this._workaddress = workaddress;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  UserDataBuilder();

  UserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _phone = $v.phone;
      _workaddress = $v.workaddress;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserData;
  }

  @override
  void update(void Function(UserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserData build() => _build();

  _$UserData _build() {
    final _$result = _$v ??
        new _$UserData._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'UserData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UserData', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserData', 'email'),
            phone: phone,
            workaddress: workaddress,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
