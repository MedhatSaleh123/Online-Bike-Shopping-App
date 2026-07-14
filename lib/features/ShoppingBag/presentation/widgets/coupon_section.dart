import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/core/constants/app_color.dart';

class CouponSection extends StatelessWidget {
  const CouponSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Enter Coupon Code",
              hintStyle: const TextStyle(color: Colors.white),

              filled: true,
              fillColor: Color(0xff242C3B),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 18,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        ApplyCouponButton(),
      ],
    );
  }
}

class ApplyCouponButton extends StatelessWidget {
  const ApplyCouponButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xff4E4AF2), Color(0xff34C8E8)],
          ),
        ),
        child: const Text(
          "Apply",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
