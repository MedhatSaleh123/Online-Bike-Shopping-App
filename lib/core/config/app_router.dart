import 'package:flutter/material.dart';

import '../../features/BikeDetails/presentation/screens/bike_details_screen.dart';
import '../../features/Discover/data/models/product_model.dart';
import '../../features/Discover/presentation/screens/discover_screen.dart';
import '../../features/ShoppingBag/presentation/screens/shopping_cart_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppName.discover:
        return MaterialPageRoute(builder: (_) => const DiscoverScreen());

      case AppName.bikeDetails:
        final product = settings.arguments as ProductModel;

        return MaterialPageRoute(
          builder: (_) => BikeDetailsScreen(productModel: product),
        );

      case AppName.shoppingCartScreen:
        return MaterialPageRoute(builder: (_) => const ShoppingCartScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}

class AppName {
  static const discover = "/discover";
  static const bikeDetails = "/bikeDetails";
  static const shoppingCartScreen = "/shoppingCartScreen";
}
