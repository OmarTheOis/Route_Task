import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/domain/entity/product_entities.dart';
import 'package:route_task/presentation/screens/list_of_products.dart';
import 'package:route_task/presentation/view_Model/cubit/cubit.dart';
import 'package:route_task/presentation/view_Model/cubit/cubit_states.dart';

import '../../core/app_theme.dart';
import '../widgets/product_card.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  var vm = ProductsCubit();

  @override
  void initState() {
    vm.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage("assets/images/routeTitle.png"),
        ),
      ),
      body:

      Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: ImageIcon(
                        AssetImage("assets/icons/search.png"),
                        color: ThemeManager.primaryColor,
                      ),
                      hintText: "What do you search for?",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ThemeManager.primaryColor, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ThemeManager.primaryColor, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const ImageIcon(
                  AssetImage("assets/icons/cart.png"),
                  color: ThemeManager.primaryColor,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            BlocProvider(
              create: (context) => vm, // Use the existing vm instance
              child: BlocBuilder<ProductsCubit, CubitStates>(
                bloc: vm,
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is Error) {
                    return const Text("Error");
                  } else if (state is Success) {
                    var data = state.dataList;
                    return HomeScreen(data: data);
                  } else {
                    return const SizedBox.shrink(); // Fallback in case of an unexpected state
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
