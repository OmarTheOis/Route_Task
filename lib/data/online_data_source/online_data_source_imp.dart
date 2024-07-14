import 'package:dio/dio.dart';
import 'package:route_task/data/online_data_source/online_data_source.dart';
import 'package:route_task/network/api/api_manger.dart';

class OnlineData implements Data{
  @override

 @override
Dio dio;

  OnlineData(this.dio);

  @override
  fromApi()  async{
    return await dio.get("https://dummyjson.com/products");
  }




}