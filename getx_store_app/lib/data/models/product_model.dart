class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? '', // Provide a default value
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? 0.0,
      imagePath: json['imagePath'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imagePath': imagePath,
    };
  }
}
