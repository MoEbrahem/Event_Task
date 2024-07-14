import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/apiServices.dart';
import 'package:untitled/data/repos/cubit/items_cubit.dart';
import 'package:untitled/data/repos/home_repo.dart';
import 'package:untitled/homeScreen.dart';
import 'package:untitled/serviceLocator.dart';
// import 'package:untitled/serviceLocator.dart';

class AppRouter {
  late HomeRepo homeRepo;
  late ItemsCubit itemsCubit;
  AppRouter() {
    homeRepo = HomeRepo(ApiServices());
    itemsCubit = ItemsCubit(homeRepo);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) {
            
              return getit.get<ItemsCubit>();
            },
            child: const HomePage(),
          ),
        );
    }
    return null;
  }
}
