import 'package:flutter/material.dart';
import 'package:untitled/appRouter.dart';
import 'package:untitled/serviceLocator.dart';

void main() {
  serviceLocator();
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
        
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
