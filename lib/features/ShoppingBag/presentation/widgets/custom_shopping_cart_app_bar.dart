import 'package:flutter/material.dart';

class CustomShoppingCartAppBar extends StatelessWidget {
  CustomShoppingCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 44,
          height: 44,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Color(0xff4E4AF2), Color(0xff34C8E8)],
            ),
          ),
          child: Image.asset("assets/arrow_back.png"),
        ),
        Text(
          "My Shopping Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(),
      ],
    );
  }
}
