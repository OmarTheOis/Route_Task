import 'package:dio/dio.dart';
import 'package:route_task/data/online_data_source/online_data_source.dart';
import 'package:route_task/network/api/api_manger.dart';

class OnlineData implements Data {



  OnlineData();

  @override
  fromApi() {
    return ApiManger().getProducts();
  }

}


