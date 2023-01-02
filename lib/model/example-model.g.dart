// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example-model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$$_ApiResponseFromJson(Map<String, dynamic> json) =>
    _$_ApiResponse(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      caseID: json['caseID'] as int?,
    );

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'caseID': instance.caseID,
    };
