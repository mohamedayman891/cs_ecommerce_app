class ProductModel {
  final String title;
  final double id;
  final String description;
  final String image;
  final double price;
  final double rating;

  ProductModel({
    required this.id,
    required this.description,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: (json['id'] as num).toDouble(),
      title: json['title'],
      description: json['description'],
      image: json['thumbnail'] ?? "",
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'price': price,
      'rating': rating,
    };
  }
}
