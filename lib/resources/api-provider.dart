import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/example-model.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = "https://firemanamc.viewydigital.com/mobapi/";

  Future<ApiResponse> fetchInvoiceList() async {
    try {
      Response response = await _dio.get(_url);
      return ApiResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print("Exception Ocured");
      }
      return ApiResponse();
    }
  }
}
