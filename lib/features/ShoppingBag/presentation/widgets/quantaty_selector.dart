import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  void increment() {
    setState(() => quantity++);
  }

  void decrement() {
    if (quantity > 1) {
      setState(() => quantity--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Plus
        _ActionButton(
          image: 'assets/add.png',
          gradient: const LinearGradient(
            colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
          ),
          onTap: increment,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            quantity.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),

        /// Minus
        _ActionButton(
          image: 'assets/subtraction.png',
          color: const Color(0xff353F54),
          onTap: decrement,
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  final Gradient? gradient;
  final Color? color;

  const _ActionButton({
    required this.image,
    required this.onTap,
    this.gradient,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          borderRadius: BorderRadius.circular(2),
          boxShadow: gradient != null
              ? [
                  BoxShadow(
                    color: Colors.blue.withValues(alpha: .35),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]
              : null,
        ),
        child: Image.asset(image),
      ),
    );
  }
}
