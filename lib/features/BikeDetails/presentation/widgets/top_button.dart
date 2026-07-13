import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const TabButton({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 42,
        decoration: BoxDecoration(
          color: selected ? const Color(0xff323B4F) : const Color(0xff28303F),
          borderRadius: BorderRadius.circular(10),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.blue.withValues(alpha: .25),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: selected ? const Color(0xff47B3FF) : Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
