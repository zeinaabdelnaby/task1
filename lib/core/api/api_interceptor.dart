import 'package:dio/dio.dart';
import 'package:flutter_grad_project/core/api/end_point.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        'Bearer eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNzVjNTFhY2UtMzg2Yi00ZmRkLTI3YzctMDhkYzJjZTc0ODk4Iiwicm9sZV9pZCI6IlBhdGllbnQiLCJOYXRpb25hbF9OdW0iOiJwYXRpZW50cGF0aWVudCIsImV4cCI6MTg2NTcxNzkyMywiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo0MjAwLyIsImF1ZCI6Imh0dHBzOi8vbG9jYWxob3N0OjQ0MzA5LyJ9.uJxvCpn1rlvMt3Pd72GaTt9kI_dPGE7LQhrJufePQJo';
    // CacheHelper().getData(key: ApiKey.token) != null
    //     ? 'Bearer ${CacheHelper().getData(key: ApiKey.token)}'
    //     : null;
    super.onRequest(options, handler);
  }
}
