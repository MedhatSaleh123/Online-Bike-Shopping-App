import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_bike_shopping_app/features/Discover/data/models/product_model.dart';
import '../../../../core/config/app_router.dart';
import '../../../ShoppingBag/data/models/cart_model.dart';
import '../../../ShoppingBag/presentation/cubits/cart_cubit.dart';
import '../widgets/bike_details_card.dart';
import '../widgets/bike_detasils_background_image.dart';
import '../widgets/bike_slider.dart';
import '../widgets/custom_bike_details_app_bar.dart';

class BikeDetailsScreen extends StatelessWidget {
  const BikeDetailsScreen({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BikeDetailsBackgroundImage(),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  CustomBikeDetailsAppBar(name: productModel.name),
                  SizedBox(height: 20),
                  BikeSlider(image: productModel.image),
                  SizedBox(height: 20),
                  BikeDetailsCard(
                    onTap: () {
                      context.read<CartCubit>().addItem(
                        CartItem(
                          id: productModel.id,
                          title: productModel.name,
                          image: productModel.image,
                          price: productModel.price,
                        ),
                      );
                      Navigator.pushNamed(context, AppName.shoppingCartScreen);
                    },
                    name: productModel.name,
                    price: productModel.price.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
