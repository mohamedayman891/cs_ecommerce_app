class ProductModel {
  final String title;
  final String image;
  final double price;
  final double rating;

  ProductModel({
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      image: json['thumbnail'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'image': image, 'price': price, 'rating': rating};
  }
}
