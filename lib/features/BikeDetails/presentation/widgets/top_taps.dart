import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/BikeDetails/presentation/widgets/top_button.dart';

class TopTabs extends StatelessWidget {
  final bool isDescription;
  final ValueChanged<bool> onChanged;

  const TopTabs({
    super.key,
    required this.isDescription,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TabButton(
            title: "Description",
            selected: isDescription,
            onTap: () => onChanged(true),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: TabButton(
            title: "Specification",
            selected: !isDescription,
            onTap: () => onChanged(false),
          ),
        ),
      ],
    );
  }
}
