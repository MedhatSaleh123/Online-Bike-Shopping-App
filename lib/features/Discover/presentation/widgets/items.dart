import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/Discover/data/models/product_model.dart';
import 'package:online_bike_shopping_app/features/Discover/presentation/widgets/product_card.dart';

class ItemsListView extends StatefulWidget {
  const ItemsListView({super.key});

  @override
  State<ItemsListView> createState() => _ItemsListViewState();
}

class _ItemsListViewState extends State<ItemsListView> {
  int selectedCategory = 0;

  void changeCategory(int index) {
    setState(() {
      selectedCategory = index;
    });
  }

  void toggleFavorite(int index) {
    setState(() {
      products[index].isFavorite = !products[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: .80,
        ),
        itemBuilder: (_, index) {
          return ProductCard(
            product: products[index],

            onPressed: () {},

            onFavoritePressed: () {
              toggleFavorite(index);
            },
          );
        },
      ),
    );
  }
}
