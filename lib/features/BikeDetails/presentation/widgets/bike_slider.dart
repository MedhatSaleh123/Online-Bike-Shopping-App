import 'package:flutter/material.dart';

class BikeSlider extends StatefulWidget {
  const BikeSlider({super.key});

  @override
  State<BikeSlider> createState() => _BikeSliderState();
}

class _BikeSliderState extends State<BikeSlider> {
  int currentIndex = 0;

  final List<String> bikes = [
    "assets/bike_1.png",
    "assets/bike_2.png",
    "assets/bike3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 230,
          child: PageView.builder(
            itemCount: bikes.length,

            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Center(
                child: Image.asset(
                  bikes[index],
                  height: 230,
                  fit: BoxFit.contain,
                ),
              );
            },
          ),
        ),

        // Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(bikes.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),

              margin: const EdgeInsets.symmetric(horizontal: 5),

              width: currentIndex == index ? 9 : 6,
              height: currentIndex == index ? 9 : 6,

              decoration: BoxDecoration(
                color: currentIndex == index
                    ? Colors.grey.shade300
                    : Colors.blue,

                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}
