import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/core/config/app_router.dart';
import 'package:online_bike_shopping_app/core/constants/app_color.dart';

void main() {
  runApp(const OnlineBikeShoppingApp());
}

class OnlineBikeShoppingApp extends StatelessWidget {
  const OnlineBikeShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouter.routes,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
      ),
      initialRoute: AppName.bikeDetails,
    );
  }
}
