import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/BikeDetails/presentation/screens/bike_details_screen.dart';

import '../../features/Discover/presentation/screens/discover_screen.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
        AppName.discover: (BuildContext context) => DiscoverScreen(),
        AppName.bikeDetails: (BuildContext context) => BikeDetailsScreen(),
      };
}

class AppName {
  static const String discover = "/discover";
  static const String shoppingBag = "/shoppingBag";
  static const String bikeDetails = "/bikeDetails";
}
