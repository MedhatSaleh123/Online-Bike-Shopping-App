import 'package:flutter/material.dart';

void main() {
  runApp(const OnlineBikeShoppingApp());
}

class OnlineBikeShoppingApp extends StatelessWidget {
  const OnlineBikeShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Welcome to Online Bike Shopping App')),
      ),
    );
  }
}
