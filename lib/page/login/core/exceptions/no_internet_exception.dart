class NoInternetException implements Exception {
  final message = 'No internet connection';
  @override
  String toString() => message;
}
