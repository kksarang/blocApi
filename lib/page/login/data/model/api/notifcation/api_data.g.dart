// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiData> _$apiDataSerializer = new _$ApiDataSerializer();

class _$ApiDataSerializer implements StructuredSerializer<ApiData> {
  @override
  final Iterable<Type> types = const [ApiData, _$ApiData];
  @override
  final String wireName = 'ApiData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ApiData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'result':
          result.result = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiData extends ApiData {
  @override
  final String? result;
  @override
  final bool status;
  @override
  final String message;

  factory _$ApiData([void Function(ApiDataBuilder)? updates]) => (new ApiDataBuilder()..update(updates))._build();

  _$ApiData._({this.result, required this.status, required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'ApiData', 'status');
    BuiltValueNullFieldError.checkNotNull(message, r'ApiData', 'message');
  }

  @override
  ApiData rebuild(void Function(ApiDataBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ApiDataBuilder toBuilder() => new ApiDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiData && result == other.result && status == other.status && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, result.hashCode), status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiData')
          ..add('result', result)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class ApiDataBuilder implements Builder<ApiData, ApiDataBuilder> {
  _$ApiData? _$v;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ApiDataBuilder();

  ApiDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiData;
  }

  @override
  void update(void Function(ApiDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiData build() => _build();

  _$ApiData _build() {
    final _$result = _$v ??
        new _$ApiData._(
            result: result,
            status: BuiltValueNullFieldError.checkNotNull(status, r'ApiData', 'status'),
            message: BuiltValueNullFieldError.checkNotNull(message, r'ApiData', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
