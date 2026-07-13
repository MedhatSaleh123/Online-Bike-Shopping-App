import 'package:flutter/material.dart';

class BinnerCardBike extends StatelessWidget {
  const BinnerCardBike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: double.infinity,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.36, 0.27),
          end: Alignment(0.58, 0.85),
          colors: [const Color(0xFF212734), const Color(0xFF353F53)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withValues(alpha: 0.20),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xFF10141B),
            blurRadius: 30,
            offset: Offset(0, 20),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x7F2A3345),
            blurRadius: 30,
            offset: Offset(0, -20),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/bike3.png',
              height: 153,
              width: 316,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10),
            Text(
              '30% Off',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.60),
                fontSize: 26,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
