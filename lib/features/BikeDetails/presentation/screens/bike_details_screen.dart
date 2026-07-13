import 'package:flutter/material.dart';

import '../widgets/bike_details_card.dart';
import '../widgets/bike_detasils_background_image.dart';
import '../widgets/bike_slider.dart';
import '../widgets/custom_bike_details_app_bar.dart';

class BikeDetailsScreen extends StatelessWidget {
  const BikeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BikeDetailsBackgroundImage(),
            Column(
              children: [
                SizedBox(height: 30),
                CustomBikeDetailsAppBar(),
                SizedBox(height: 20),
                BikeSlider(),
                SizedBox(height: 20),
                BikeDetailsCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
