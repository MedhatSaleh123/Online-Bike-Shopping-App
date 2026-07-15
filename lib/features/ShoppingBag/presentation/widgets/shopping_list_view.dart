import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/widgets/custom_shopping_card.dart';

import '../cubits/cart_cubit.dart';
import '../cubits/cart_state.dart';

class ShoppingListView extends StatelessWidget {
  const ShoppingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (_, index) {
            final item = state.items[index];

            return CustomShoppingCard(
              increment: () {
                context.read<CartCubit>().increaseQuantity(item.id);
              },
              decrement: () {
                context.read<CartCubit>().decreaseQuantity(item.id);
              },
              image: item.image,
              title: item.title,
              quantity: item.quantity,
              price: item.price,
            );
          },
        );
      },
    );
  }
}
