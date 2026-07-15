import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/widgets/coupon_section.dart';
import 'package:online_bike_shopping_app/features/ShoppingBag/presentation/widgets/shopping_list_view.dart';
import '../widgets/checkout_button.dart';
import '../widgets/custom_shopping_cart_app_bar.dart';
import '../widgets/custom_text_shopping.dart';
import '../widgets/order_summry_card.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CustomShoppingCartAppBar(),
                SizedBox(height: 30),
                SizedBox(height: 300, child: ShoppingListView()),
                CustomTextShopping(),
                SizedBox(height: 20),
                CouponSection(),
                SizedBox(height: 15),
                OrderSummaryCard(),
                CheckoutButton(title: 'Checkout', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
