import 'package:flutter/material.dart';

import 'spec_tile.dart';

class SpecificationWidget extends StatelessWidget {
  const SpecificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpecTile(title: "Frame", value: "Steel"),

        SizedBox(height: 12),

        SpecTile(title: "Speed", value: "16"),

        SizedBox(height: 12),

        SpecTile(title: "Weight", value: "11.5 kg"),

        SizedBox(height: 12),

        SpecTile(title: "Brake", value: "Shimano"),
        SizedBox(height: 130),
      ],
    );
  }
}
