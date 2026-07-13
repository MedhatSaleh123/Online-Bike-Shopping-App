import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final String price;

  const PriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: const TextStyle(
        color: Color(0xff3D9CEA),
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
