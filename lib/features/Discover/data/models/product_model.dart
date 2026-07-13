class ProductModel {
  final String name;
  final String category;
  final String image;
  final double price;
  bool isFavorite;

  ProductModel({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    this.isFavorite = false,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: "PEUGEOT - LR01",
    category: "Road Bike",
    image: "assets/bike_1.png",
    price: 1999.99,
  ),
  ProductModel(
    name: "SMITH - Trade",
    category: "Road Helmet",
    image: "assets/cobi.png",
    price: 120,
  ),
  ProductModel(
    name: "PILOT - Chromoly",
    category: "Mountain Bike",
    image: "assets/bike_2.png",
    price: 5343.2,
  ),
  ProductModel(
    name: "SMITH - Trade",
    category: "Helmet",
    image: "assets/bike3.png",
    price: 2321.77,
  ),
];
