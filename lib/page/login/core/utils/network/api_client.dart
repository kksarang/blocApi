import 'package:chopper/chopper.dart';

import '../../../data/built_value_converter.dart';
import 'mobile_data_interseptor.dart';

class ApiClient {
  static ChopperClient buildClient(ChopperService service) {
    ChopperClient client = ChopperClient(
      baseUrl: AppConstants.BASE_URL,
      services: [
        service,
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        MobileDataInterceptor(),
        HttpLoggingInterceptor(),
      ],
    );
    return client;
  }
}

class AppConstants {
  static String APP_DATABASE = 'fireman.sqlite';
  static String BASE_URL = 'http://firemanamc.viewydigital.com/mobapi';
}
