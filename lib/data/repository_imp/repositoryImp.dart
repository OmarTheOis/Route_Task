import 'package:dio/dio.dart';
import 'package:route_task/data/online_data_source/online_data_source.dart';
import 'package:route_task/data/online_data_source/online_data_source_imp.dart';
import 'package:route_task/domain/entity/product_entities.dart';

import '../../domain/repository/repository.dart';
import '../model/product_model.dart';

class ProductsRepositoryImp implements ProductsRepository {
  Data data;

  ProductsRepositoryImp(this.data);

  @override
  fromApi()  {
    data = OnlineData();
    return  data.fromApi();
  }



}