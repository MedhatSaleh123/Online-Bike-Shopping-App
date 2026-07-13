import 'package:flutter/material.dart';

import '../../features/Discover/presentation/screens/discover_screen.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
        AppName.discover: (BuildContext context) => DiscoverScreen(),
      };
}

class AppName {
  static const String discover = "/";
  static const String shoppingBag = "/shoppingBag";
  static const String details = "/details";
}
