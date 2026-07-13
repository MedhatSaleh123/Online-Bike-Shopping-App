import 'package:flutter/material.dart';

class BikeDetailsBackgroundImage extends StatelessWidget {
  const BikeDetailsBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      left: 0,
      right: 0,
      child: Image.asset("assets/backgound.png", fit: BoxFit.cover),
    );
  }
}
