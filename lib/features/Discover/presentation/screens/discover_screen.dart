import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/custom_button_nav_bar.dart';
import '../../data/local/local_data.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});
  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CustomButtonNavBar(
        navImages: navImages,
        currentIndex: currentIndex,
        onChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
