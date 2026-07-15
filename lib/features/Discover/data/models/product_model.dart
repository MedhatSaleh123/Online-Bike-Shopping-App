class ProductModel {
  final int id;
  final String name;
  final String category;
  final String image;
  final double price;
  bool isFavorite;

  ProductModel({
    required this.name,
    required this.id,
    required this.category,
    required this.image,
    required this.price,
    this.isFavorite = false,
  });
}

final List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: "PEUGEOT - LR01",
    category: "Road Bike",
    image: "assets/bike_1.png",
    price: 1999.99,
  ),
  ProductModel(
    id: 2,
    name: "SMITH - Trade",
    category: "Road Helmet",
    image: "assets/cobi.png",
    price: 120,
  ),
  ProductModel(
    id: 3,
    name: "PILOT - Chromoly",
    category: "Mountain Bike",
    image: "assets/bike_2.png",
    price: 5343.2,
  ),
  ProductModel(
    id: 4,
    name: "SMITH - Trade",
    category: "Helmet",
    image: "assets/bike3.png",
    price: 2321.77,
  ),
];
