import 'package:flutter/material.dart';
import 'package:soft_app/core/consts/theme/app_colors.dart';
import 'package:soft_app/presentation/routes/app_router.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor
      ),
      
    );
  }
}