import 'package:flutter/material.dart';

class CustomTextShopping extends StatelessWidget {
  const CustomTextShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Your cart qualifies for free shipping",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Colors.grey,
      ),
    );
  }
}
