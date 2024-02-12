import 'package:dio/dio.dart';
import 'package:flutter_grad_project/core/api/end_point.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        'Bearer eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiOTY1NDdhODUtMzljOC00MGI1LTFlYjEtMDhkYmViNmVjZjVjIiwicm9sZV9pZCI6IkFkbWluIiwiTmF0aW9uYWxfTnVtIjoic3RyaW5nIiwiZXhwIjoxODY0MjQzNjYyLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjQyMDAvIiwiYXVkIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NDQzMDkvIn0.OEd4PjMi-lzByLh2x4e9BDnMGU5d2RVDLRQ2quGs_O0';
    // CacheHelper().getData(key: ApiKey.token) != null
    //     ? 'Bearer ${CacheHelper().getData(key: ApiKey.token)}'
    //     : null;
    super.onRequest(options, handler);
  }
}
