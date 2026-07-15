import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/cart_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  void addItem(CartItem item) {
    final items = List<CartItem>.from(state.items);

    final index = items.indexWhere((e) => e.id == item.id);

    if (index != -1) {
      final old = items[index];

      items[index] = old.copyWith(quantity: old.quantity + 1);
    } else {
      items.add(item);
    }

    emit(state.copyWith(items: items));
  }

  void removeItem(int id) {
    final items = List<CartItem>.from(state.items);

    items.removeWhere((e) => e.id == id);

    emit(state.copyWith(items: items));
  }

  void increaseQuantity(int id) {
    final items = List<CartItem>.from(state.items);

    final index = items.indexWhere((e) => e.id == id);

    if (index == -1) return;

    final old = items[index];

    items[index] = old.copyWith(quantity: old.quantity + 1);

    emit(state.copyWith(items: items));
  }

  void decreaseQuantity(int id) {
    final items = List<CartItem>.from(state.items);

    final index = items.indexWhere((e) => e.id == id);

    if (index == -1) return;

    final old = items[index];

    if (old.quantity == 1) {
      items.removeAt(index);
    } else {
      items[index] = old.copyWith(quantity: old.quantity - 1);
    }

    emit(state.copyWith(items: items));
  }

  void clearCart() {
    emit(const CartState());
  }
}
