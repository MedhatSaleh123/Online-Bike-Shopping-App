import 'package:flutter/material.dart';

class CustomButtonNavBar extends StatefulWidget {
  CustomButtonNavBar({
    super.key,
    required this.navImages,
    this.currentIndex = 0,
  });
  int currentIndex;

  final List<String> navImages;

  @override
  State<CustomButtonNavBar> createState() => _CustomButtonNavBarState();
}

class _CustomButtonNavBarState extends State<CustomButtonNavBar> {
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
            children: List.generate(widget.navImages.length, (index) {
              final selected = widget.currentIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    widget.currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  transform: Matrix4.identity()..rotateZ(-0.1),
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
                    widget.navImages[index],
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
