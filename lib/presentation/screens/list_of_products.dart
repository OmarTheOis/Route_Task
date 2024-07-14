import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_task/data/model/product_model.dart';
import 'package:route_task/domain/entity/product_entities.dart';

import '../../core/app_theme.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  List<ProductEntities> data;
  HomeScreen({super.key,required this.data});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: size.width * 0.44 / (size.height * 0.35), // Adjusted aspect ratio for better fit
                ),
                itemCount: widget.data.length,
                itemBuilder: (context, index) =>
                   Container(
                 child: ProductItems(image: widget.data[index].image.toString(),
                        name: widget.data[index].name.toString(),
                        description: widget.data[index].description.toString(),
                        price: widget.data[index].price as double,
                        sale: widget.data[index].discount as double,
                        reviews: widget.data[index].reviews as double),)
              ),




    );
  }
}
