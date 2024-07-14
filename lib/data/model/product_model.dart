import 'package:route_task/domain/entity/product_entities.dart';

class ProductsModel extends ProductEntities{

  ProductsModel({required super.image,required super.name,
    required super.description, required super.price, required super.discount, required super.reviews});

  factory ProductsModel.fromApi(Map<String,dynamic> json){
    return ProductsModel(
        image: json['thumbnail'],
        name: json['title'],
        description: json['description'],
        price: json['price'],
        discount: ((json['price'])*(1-(json['discountPercentage']/100))),
        reviews: json['rating']);


  }
}