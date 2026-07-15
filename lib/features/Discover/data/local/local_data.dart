import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/discover_page.dart';
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/screens/shopping_cart_screen.dart';

final List<String> navImages = [
  'assets/bike_1.png',
  'assets/map1.png',
  'assets/cart.png',
  'assets/user.png',
  'assets/doc1.png',
];
final List<Widget> pages = [
  DiscoverPage(),
  Center(
    child: Text(
      "Map",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  ShoppingCartScreen(),
  Center(
    child: Text(
      "Profile",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  Center(
    child: Text(
      "Documents",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
];
