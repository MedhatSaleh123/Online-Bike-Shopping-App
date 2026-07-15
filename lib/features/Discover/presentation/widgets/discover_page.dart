import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/image_background.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/items.dart';
import '../widgets/binner_card_bike.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/custom_dicover_appbar.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ImageBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                CustomDiscoverAppBar(),
                SizedBox(height: 20),
                BinnerCardBike(),
                SizedBox(height: 50),
                CategoriesListView(),
                SizedBox(height: 20),
                ItemsListView(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
