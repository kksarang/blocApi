import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'meta.dart';

part 'api_data.g.dart';

abstract class ApiData extends Object with Meta implements Built<ApiData, ApiDataBuilder> {
  String? get result;

  ApiData._();

  factory ApiData([Function(ApiDataBuilder) updates]) = _$ApiData;

  static Serializer<ApiData> get serializer => _$apiDataSerializer;
}
