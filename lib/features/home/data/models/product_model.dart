import 'package:cs_ecommerce_app/features/home/data/models/category_model.dart';

class ProductModel {
  final String title;
  final String description;
  final CategoryModel category;
  final String image;
  final double price;
  final double rating;

  ProductModel({
    required this.category,
    required this.description,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      description: json['description'],
      category: CategoryModel.fromJson({
        "name": json['category'],
        "image": json['image'],
      }),
      image: json['thumbnail'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'category': category,
      'image': image,
      'price': price,
      'rating': rating,
    };
  }
}
