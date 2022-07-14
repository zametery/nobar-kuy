import 'dart:io';

import 'package:dicoding_expert/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:flutter/services.dart';

class HttpConfig {
  static Future<Dio> client() async {
    List<int> certificate = [];
    certificate = (await rootBundle.load('certificates/certificates.pem'))
        .buffer
        .asUint8List();

    final dio = Dio(BaseOptions(
      baseUrl: APICore.baseUrl,
      headers: {'Content-Type': 'application/json'},
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters['api_key'] = APICore.apiKey;
        return handler.next(options);
      },
    ));

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      SecurityContext context = SecurityContext();
      context.setTrustedCertificates(certificate.join());
      HttpClient httpClient = HttpClient(context: context);
      return httpClient;
    };

    return dio;
  }
}
