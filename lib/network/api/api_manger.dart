import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:route_task/data/model/product_model.dart';
import 'package:route_task/domain/entity/product_entities.dart';

class ApiManger  {


   Future<List<ProductEntities>> getProducts() async {
     var response = await http.get(Uri.parse("https://dummyjson.com/products"));

     var data = json.decode(response.body);
     List product = data['products'];
     List<ProductEntities> products=[];
     for( int i =0 ; i<product.length ;i++){
       products.add(ProductsModel.fromApi(product[i]));
     }
     print(products[0].name);
   return products;

   }

}