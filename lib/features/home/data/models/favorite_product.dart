class FavoriteProduct {
  final String title;

  FavoriteProduct({required this.title});

  factory FavoriteProduct.fromJson(Map<String, dynamic> json) {
    return FavoriteProduct(title: json['title']);
  }
}
