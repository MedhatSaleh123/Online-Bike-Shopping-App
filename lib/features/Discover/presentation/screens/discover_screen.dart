import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/custom_button_nav_bar.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/image_background.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/items.dart';

import '../widgets/binner_card_bike.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/custom_dicover_appbar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int currentIndex = 0;

  final List<String> navImages = [
    'assets/bike_1.png',
    'assets/map1.png',
    'assets/cart.png',
    'assets/user.png',
    'assets/doc1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ImageBackground(),
            Positioned(
              right: 20,
              left: 20,
              top: 30,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDiscoverAppBar(),
                    SizedBox(height: 20),
                    BinnerCardBike(),
                    SizedBox(height: 50),
                    CategoriesListView(),
                    SizedBox(height: 20),
                    ItemsListView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtonNavBar(
        navImages: navImages,
        currentIndex: currentIndex,
      ),
    );
  }
}
