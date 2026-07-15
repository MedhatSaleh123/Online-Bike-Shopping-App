class CartItem {
  final int id;
  final String title;
  final String image;
  final double price;
  final int quantity;

  const CartItem({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.quantity = 1,
  });

  CartItem copyWith({int? quantity}) {
    return CartItem(
      id: id,
      title: title,
      image: image,
      price: price,
      quantity: quantity ?? this.quantity,
    );
  }
}
