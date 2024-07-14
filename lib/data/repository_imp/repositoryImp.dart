import 'package:dio/dio.dart';
import 'package:route_task/data/online_data_source/online_data_source.dart';
import 'package:route_task/domain/entity/product_entities.dart';

import '../../domain/repository/repository.dart';
import '../model/product_model.dart';

class ProductsRepositoryImp implements ProductsRepository {
  Data data;

  ProductsRepositoryImp(this.data);

  @override


  @override
fromApi() async{
  try{
    dynamic response = await data.fromApi();
    List<ProductsModel> dataList = [];

    if(response.statusCode == 200){
      var data = response.data["products"] as List;
      for(var e in data){
        dataList.add(ProductsModel.fromApi(e));
      }
      return dataList;
    }
  }on DioException catch(e){
    return e.response!.statusCode.toString();
  }

}

}