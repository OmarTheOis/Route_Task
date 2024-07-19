import 'package:flutter/material.dart';
import 'package:route_task/data/online_data_source/online_data_source_imp.dart';
import 'package:route_task/network/api/api_manger.dart';


import 'package:route_task/presentation/screens/list_of_products.dart';
import 'package:route_task/presentation/screens/view.dart';

import 'core/app_theme.dart';
import 'data/online_data_source/online_data_source.dart';
import 'data/repository_imp/repositoryImp.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainView(),
      theme: ThemeManager.lightTheme,
    );
  }
}
