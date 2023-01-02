import '../model/example-model.dart';
import 'api-provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<ApiResponse> fetchInvoiceList() {
    return _provider.fetchInvoiceList();
  }
}

class NetworkError extends Error {}

///build runner commend line code
