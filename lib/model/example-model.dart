import 'package:freezed_annotation/freezed_annotation.dart';

part 'example-model.freezed.dart';
part 'example-model.g.dart';

@freezed
class ApiResponse {
  ApiResponse._();
  //
  //
  //

  factory ApiResponse({String? message, bool? status, int? caseID}) = _ApiResponse;
  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
  // ApiResponse.fromJson(Map<String, dynamic> json) {
  //   message = json['message'];
  //   status = json['status'];
  //   caseID = json['caseID'];
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['message'] = this.message;
  //   data['status'] = this.status;
  //   data['caseID'] = this.caseID;
  //   return data;
  // }
}
