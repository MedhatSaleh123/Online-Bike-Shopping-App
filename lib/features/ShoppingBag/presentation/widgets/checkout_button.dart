import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  final String title;

  const CheckoutButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    this.title = 'Checkout',
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: isLoading ? null : onPressed,
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xff262E3C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ArrowButton(isLoading: isLoading),

              const SizedBox(width: 16),

              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ArrowButton extends StatelessWidget {
  final bool isLoading;

  const _ArrowButton({required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [Color(0xff5A7BFF), Color(0xff2CA8FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: isLoading
            ? const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
                size: 22,
              ),
      ),
    );
  }
}
