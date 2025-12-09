import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tabnewsnc_engine/src/domain/constants.dart';

typedef HttpServiceQuery = Map<String, String>;
typedef HttpServiceResponse = Map<String, dynamic>;

abstract class HttpService {
  const HttpService();

  Future<List<HttpServiceResponse>?> getAll(
    String path, {
    HttpServiceQuery query = const {},
  });

  Future<HttpServiceResponse?> getOne(
    String path, {
    HttpServiceQuery query = const {},
  });
}

final class HttpServiceImpl extends HttpService {
  HttpServiceImpl() {
    _dio = Dio(BaseOptions(baseUrl: Constants.apiUrl));
  }

  late final Dio _dio;

  @override
  Future<List<HttpServiceResponse>?> getAll(
    String path, {
    HttpServiceQuery query = const {},
  }) async {
    final response = await _dio.get<List<dynamic>>(
      path,
      queryParameters: query,
    );

    if (response.statusCode != HttpStatus.ok) return null;
    return response.data?.map((e) => e as HttpServiceResponse).toList();
  }

  @override
  Future<HttpServiceResponse?> getOne(
    String path, {
    HttpServiceQuery query = const {},
  }) async {
    final response = await _dio.get<dynamic>(path, queryParameters: query);

    if (response.statusCode != HttpStatus.ok) return null;
    return response.data as HttpServiceResponse?;
  }
}
