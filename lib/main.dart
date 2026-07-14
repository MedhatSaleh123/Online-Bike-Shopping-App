import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/core/config/app_router.dart';
import 'package:online_bike_shopping_app/core/constants/app_color.dart';
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/screens/shopping_cart_screen.dart';
import 'package:online_bike_shopping_app/test.dart';

void main() {
  runApp(const OnlineBikeShoppingApp());
}

class OnlineBikeShoppingApp extends StatelessWidget {
  const OnlineBikeShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Test(),
      routes: AppRouter.routes,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
      ),
      initialRoute: AppName.discover,
    );
  }
}
