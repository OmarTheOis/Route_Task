import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:route_task/data/model/product_model.dart';
import 'package:route_task/domain/entity/product_entities.dart';
class ApiManger {

  static ApiManger? _this;

  factory ApiManger() {
    _this ??= ApiManger._();
    return _this!;
  }

  Dio freeDio = Dio();
  Dio tokenDio = Dio();

  String lang = "en";


  String? mytoken;
  String mobile = "";
  final String storageKeyMobileToken = "Authorization";

  ApiManger._() {
    freeDio.options.connectTimeout = const Duration(milliseconds: 30000);
    freeDio.options.baseUrl = "https://dummyjson.com";

    tokenDio.options.connectTimeout = const Duration(milliseconds: 30000);
    tokenDio.options.baseUrl = "https://dummyjson.com";
  }
}
