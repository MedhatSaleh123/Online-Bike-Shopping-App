import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/widgets/custom_shopping_card.dart';

class ShoppingListView extends StatelessWidget {
  const ShoppingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: List.generate(3, (index) => CustomShoppingCard()));
  }
}
