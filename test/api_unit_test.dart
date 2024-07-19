import 'package:flutter_test/flutter_test.dart';
import 'package:route_task/network/api/api_manger.dart';
import 'package:route_task/presentation/view_Model/cubit/cubit.dart';


void main(){
  test("getData", () async{

    //Arrange
    ProductsCubit productsCubit = ProductsCubit();
    //Act
    var  actual = await productsCubit.getProducts();
    //Assert
    expect(actual, true);
  });

}