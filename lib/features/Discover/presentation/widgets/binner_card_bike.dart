import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BinnerCardBike extends StatelessWidget {
  const BinnerCardBike({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BikeModel> bikes = [
      const BikeModel(image: 'assets/bike_1.png', discount: '30% Off'),
      const BikeModel(image: 'assets/bike_2.png', discount: '40% Off'),
      const BikeModel(image: 'assets/bike3.png', discount: '25% Off'),
    ];

    return SizedBox(
      height: 260,
      child: CarouselSlider.builder(
        itemCount: bikes.length,
        itemBuilder: (context, index, realIndex) {
          return BikeCard(bike: bikes[index]);
        },
        options: CarouselOptions(
          height: 260,
          viewportFraction: .82,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          clipBehavior: Clip.none,

          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.easeInOut,

          enableInfiniteScroll: true,

          pauseAutoPlayOnTouch: true,
          pauseAutoPlayOnManualNavigate: true,

          scrollPhysics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}

class BikeCard extends StatelessWidget {
  const BikeCard({super.key, required this.bike});

  final BikeModel bike;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          colors: [Color(0xff31394C), Color(0xff252D3A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.white12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .25),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -40,
            bottom: -40,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: .15),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(bike.image, fit: BoxFit.contain),
                ),
              ),
              Text(
                bike.discount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BikeModel {
  final String image;
  final String discount;

  const BikeModel({required this.image, required this.discount});
}
