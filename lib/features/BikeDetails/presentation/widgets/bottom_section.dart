import 'package:flutter/material.dart';

import 'price_widget.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          Expanded(flex: 2, child: PriceWidget(price: "\$ 1,999.99")),

          const SizedBox(width: 18),

          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Color(0xff4E4AF2), Color(0xff34C8E8)],
                ),
              ),
              child: const Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
