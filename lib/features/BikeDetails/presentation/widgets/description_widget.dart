import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "PEUGEOT - LR01",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 14),

        Text(
          "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
          style: TextStyle(color: Colors.white, height: 2.5, fontSize: 15),
        ),
      ],
    );
  }
}
