import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/core/constants/app_color.dart';
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/widgets/quantaty_selector.dart';

class CustomShoppingCard extends StatelessWidget {
  const CustomShoppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            /// Image
            Container(
              height: 90,
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff4C5770), Color(0xff363E51)],
                ),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Image.asset("assets/bike_1.png", fit: BoxFit.contain),
            ),

            const SizedBox(width: 18),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "PEUGEOT - LR01",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        "\$ 1,999.99",
                        style: TextStyle(
                          color: Color(0xff3C9EEA),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      QuantitySelector(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(thickness: 0.5, height: 50, color: AppColors.dark),
      ],
    );
  }
}
