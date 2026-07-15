import 'package:flutter/material.dart';

class CustomButtonNavBar extends StatelessWidget {
  const CustomButtonNavBar({
    super.key,
    required this.navImages,
    required this.currentIndex,
    required this.onChanged,
  });
  final int currentIndex;

  final List<String> navImages;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xff232833),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .25),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(navImages.length, (index) {
              final selected = currentIndex == index;

              return GestureDetector(
                onTap: () {
                  onChanged(index);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,

                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: selected
                        ? const Color(0xff4C8DFF)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    navImages[index],
                    width: 24,
                    height: 24,
                    color: Colors.white, // Remove if your images are colored
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
