import 'package:untitled/data/apiServices.dart';
import 'package:untitled/data/model/itemsModel.dart';

class HomeRepo {
  final ApiServices apiServices;
  HomeRepo(this.apiServices);

  Future<List<ItemsModel>> fetchData() async {
    var data = await apiServices.getData();

    return data;
  }
}
