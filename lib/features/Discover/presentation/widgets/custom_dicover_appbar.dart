import 'package:flutter/material.dart';

class CustomDiscoverAppBar extends StatelessWidget {
  const CustomDiscoverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Choose Your Bike',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff4E4AF2), Color(0xff34C8E8)],
              end: Alignment.topLeft,
              begin: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Image.asset('assets/search.png'),
        ),
      ],
    );
  }
}
