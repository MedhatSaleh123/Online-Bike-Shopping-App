import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/core/constants/app_color.dart';
import 'package:online_bike_shopping_app/features/Discover/data/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onFavoritePressed;
  final VoidCallback onPressed;

  const ProductCard({
    super.key,
    required this.product,
    required this.onFavoritePressed,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onPressed,
      child: Container(
        // transform: Matrix4.identity()..rotateZ(-0.1),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff353F54), Color(0xff222834)],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff10141B),
              blurRadius: 25,
              offset: Offset(0, 15),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Favorite
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: onFavoritePressed,
                child: Icon(
                  Icons.favorite_border,
                  color: product.isFavorite
                      ? AppColors.secondary
                      : Colors.white,

                  size: 25,
                ),
              ),
            ),

            const SizedBox(height: 5),

            /// Bike Image
            Expanded(
              child: Image.asset(
                product.image,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              product.category,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),

            const SizedBox(height: 4),

            Text(
              product.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "\$${product.price}",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
