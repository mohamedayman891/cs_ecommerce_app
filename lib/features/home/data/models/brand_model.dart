class BrandModel {
  final String name;
  final String image;

  BrandModel({required this.name, required this.image});

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(name: json['name'], image: json['emoji']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'image': image};
  }
}
