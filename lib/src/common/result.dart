enum ResponseStatus { success, error }

class ResponseResult<T> {
  ResponseStatus status;
  T? data;
  int errorCode;
  String? message;

  ResponseResult(
      {required this.status, this.data, this.message, this.errorCode = -1});

  factory ResponseResult.success(T data) {
    return ResponseResult(status: ResponseStatus.success, data: data);
  }

  factory ResponseResult.error(int errorCode, String? message) {
    return ResponseResult(
        status: ResponseStatus.error, message: message, errorCode: errorCode);
  }
}