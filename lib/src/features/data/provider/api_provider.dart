import 'package:app_cinemovida/env/env.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider((ref) => ApiProvider());

class ApiProvider {
  final Dio dio = Dio();

  ApiProvider() {
    final tmdbApiKey = Env.tmdbApiKey;

    dio.options.baseUrl = 'https://api.themoviedb.org/3/';
    dio.options.queryParameters = {'api_key': tmdbApiKey};
    dio.options.headers['Content-Type'] = 'application/json';
  }

  Future<Response> get(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(endpoint, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}

