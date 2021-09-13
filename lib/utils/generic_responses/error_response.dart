import 'package:get_example/utils/generic_responses/default_response.dart';

class ErrorResponse implements DefaultResponse {
  @override
  String? status;
  @override
  int? statusCode;

  final String? message;
  final String? error;

  ErrorResponse({
    this.message,
    this.error,
    this.status,
    this.statusCode,
  });
}
