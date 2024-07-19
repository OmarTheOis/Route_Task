import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/data/online_data_source/online_data_source.dart';
import 'package:route_task/data/online_data_source/online_data_source_imp.dart';
import 'package:route_task/data/repository_imp/repositoryImp.dart';
import 'package:route_task/domain/repository/repository.dart';
import 'package:route_task/network/api/api_manger.dart';
import 'package:route_task/presentation/view_Model/cubit/cubit_states.dart';

class ProductsCubit extends Cubit<CubitStates> {
  ProductsCubit() : super(Loading());

  final ApiManger apiManger = ApiManger();
  late Data data;
  late ProductsRepository repo;


Future<bool> getProducts()  async{
  try {
    emit(Loading());
    data = OnlineData();
    repo = ProductsRepositoryImp(data);
    print('Fetching products...');
    var result = await repo.fromApi();
    print('Products fetched: $result');
    emit(Success(result));
    return true;
  } catch (e) {
    print('Error fetching products: $e');
    emit(Error(e.toString()));
    return false;
  }
}
}


