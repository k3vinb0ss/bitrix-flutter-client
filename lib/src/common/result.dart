enum ResultStatus { success, error }

class Result<T> {
  ResultStatus status;
  T? data;
  int errorCode;
  String? message;

  Result({required this.status, this.data, this.message, this.errorCode = -1});

  factory Result.success(T data) {
    return Result(status: ResultStatus.success, data: data);
  }

  factory Result.error(int errorCode, {String? message}) {
    return Result(
        status: ResultStatus.error, message: message, errorCode: errorCode);
  }

  @override
  String toString() {
    return 'Result{status: $status, data: $data, errorCode: $errorCode, message: $message}';
  }
}