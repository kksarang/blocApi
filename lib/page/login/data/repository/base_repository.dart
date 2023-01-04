import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';

import '../../core/exceptions/no_internet_exception.dart';
import '../model/api/notifcation/meta.dart';
import '../result.dart';

class BaseRepository {
  Future<Result<T>> safeApiCall<T extends Meta>(Function request) async {
    try {
      Response response = await request();
      if (response.isSuccessful) {
        T resBody = response.body;
        return (resBody.status) ? Result<T>.success(response.body) : Result.error(resBody.message);
      } else {
        return Result.error('${response.base.reasonPhrase}');
      }
    } on SocketException catch (e) {
      print(e);
      return Result.error("No internet connection");
    } on NoInternetException {
      return Result.error("No internet connection");
    } on TimeoutException {
      return Result.error('Timeout reached');
    } on HttpException {
      return Result.error('Something went wrong');
    } on FormatException {
      return Result.error('Bad response format');
    } on NoSuchMethodError {
      return Result.error('Bad request params format');
    } catch (_) {
      return Result.error('Something went wrong');
    }
  }
}
