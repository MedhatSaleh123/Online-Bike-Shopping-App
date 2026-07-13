import 'package:flutter/material.dart';

class SpecTile extends StatelessWidget {
  final String title;
  final String value;

  const SpecTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white60, fontSize: 18),
          ),
        ),

        Text(
          value,
          style: const TextStyle(
            color: Colors.white,

            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
