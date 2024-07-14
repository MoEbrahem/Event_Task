import 'package:get_it/get_it.dart';
import 'package:untitled/data/apiServices.dart';
import 'package:untitled/data/repos/cubit/items_cubit.dart';
import 'package:untitled/data/repos/home_repo.dart';

GetIt getit = GetIt.instance;
void serviceLocator() {
  getit.registerSingleton<ApiServices>(ApiServices());
  getit.registerSingleton<HomeRepo>(
    HomeRepo(
      getit.get<ApiServices>(),
    ),
  );
  getit.registerSingleton<ItemsCubit>(
    ItemsCubit(
      getit.get<HomeRepo>(),
    ),
  );
}
