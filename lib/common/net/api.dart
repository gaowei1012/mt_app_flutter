import 'dart:collection';
import 'dart:convert';
import 'package:dio/dio.dart';

class HttpMagger {
  static const CONTENT_TYPE_JSON = 'application/json';
  static const CONTENT_TYPE_FROM = 'application/x-www-form-urlencoded';

  Dio _dio = new Dio();

  /// 拦截器
  HttpMagger() {
    // _dio.interceptors.add(element);
  }

  netFetch(url, parmas, Map<String, dynamic> header, Options option) async {
    Map<String, dynamic> headers = new HashMap();
    /// 添加请求头
    if (header != null) header.addAll(header);
    /// 添加options
    if (option != null) {
      option.headers = headers; 
    } else {
      option = new Options(method: 'GET');
      option.headers = headers;
    }

    Response response;
    try {
      response = await _dio.request(url, data: parmas, options: option);
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch(e) {
      return Exception(response.data);
    }
  }
}
