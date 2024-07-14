import 'package:route_task/data/model/product_model.dart';
import 'package:route_task/domain/entity/product_entities.dart';

sealed class CubitStates {}

class Loading extends CubitStates{}
class Success extends CubitStates{
   List<ProductsModel> dataList;
  Success(this.dataList);
}
class Error extends CubitStates{
  String errorMessage;
  Error(this.errorMessage);
}