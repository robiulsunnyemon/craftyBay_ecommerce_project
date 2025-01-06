class NetworkResponse {
  final int? statusCode;
  final dynamic body;
  final bool isSuccess;
  final String errorMessage;
  NetworkResponse({
    this.statusCode,
    this.body,
    this.isSuccess = false,
    this.errorMessage = 'Something Went to wrong',
  });
}
