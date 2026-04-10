import 'package:cs_ecommerce_app/core/cache/cache_helper.dart';
import 'package:cs_ecommerce_app/core/helper_function/on_generate_routes.dart';
import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/main_view.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper().init();
  setup();
  runApp(const CSEcommerce());
}

class CSEcommerce extends StatelessWidget {
  const CSEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        fontFamily: "Poppins",
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: MainView.routeName,
    );
  }
}

/*
    "email": "ayaabdelmon@gmail.com",
    "password": "Aya@2025",
    
    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4OGRiZDkwZjk5ZThhYTQ1MWQ3YjdhMSIsImlhdCI6MTc1NTQxODkxOCwiZXhwIjoxNzU4MDEwOTE4fQ.xmuJmE-qRoCMFVoWQ3Ze0QQr5llNRP5xtGiSw6w5BWg
    ! sendCode
    ! verifyCode
    ! changePassword
final String _ApiKeys = 'AIzaSyAzyneWjVDMsJg-oKT41iQAWihx93v-ock';
"list":[{"name":"Essence","emoji":"💄"},{"name":"Glamour Beauty","emoji":"✨"},{"name":"Velvet Touch","emoji":"🪞"},{"name":"Chic Cosmetics","emoji":"👛"},{"name":"Nail Couture","emoji":"💅"},{"name":"Calvin Klein","emoji":"👔"},{"name":"Chanel","emoji":"👗"},{"name":"Dior","emoji":"👜"},{"name":"Dolce & Gabbana","emoji":"👠"},{"name":"Gucci","emoji":"🕶️"},{"name":"Annibale Colombo","emoji":"🛋️"},{"name":"Furniture Co.","emoji":"🪑"},{"name":"Knoll","emoji":"🏢"},{"name":"Bath Trends","emoji":"🛁"}]}
    */
//* (GET)-> (/home/categories)
// var getAllCategories = {
//   "list": [
//     {
//       "slug": "beauty",
//       "name": "Beauty",
//       "url": "https://dummyjson.com/products/category/beauty",
//       "image":
//           "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
//     },
//     {
//       "slug": "fragrances",
//       "name": "Fragrances",
//       "url": "https://dummyjson.com/products/category/fragrances",
//       "image":
//           "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/1.webp",
//     },
//     {
//       "slug": "mens-shirts",
//       "name": "Mens Shirts",
//       "url": "https://dummyjson.com/products/category/mens-shirts",
//       "image":
//           "https://cdn.dummyjson.com/product-images/mens-shirts/blue-&-black-check-shirt/1.webp",
//     },
//   ],
// };
// //* (GET)-> (/home/brands) ->
// var brands = {
//   "list": [
//     {"name": "Essence", "emoji": "💄"},
//     {"name": "Glamour Beauty", "emoji": "✨"},
//     {"name": "Velvet Touch", "emoji": "🪞"},
//     {"name": "Chic Cosmetics", "emoji": "👛"},
//     {"name": "Nail Couture", "emoji": "💅"},
//     {"name": "Calvin Klein", "emoji": "👔"},
//     {"name": "Chanel", "emoji": "👗"},
//     {"name": "Dior", "emoji": "👜"},
//     {"name": "Dolce & Gabbana", "emoji": "👠"},
//     {"name": "Gucci", "emoji": "🕶️"},
//     {"name": "Annibale Colombo", "emoji": "🛋️"},
//     {"name": "Furniture Co.", "emoji": "🪑"},
//     {"name": "Knoll", "emoji": "🏢"},
//     {"name": "Bath Trends", "emoji": "🛁"},
//   ],
// };
// //* (GET)-> (/home/products?skip=0&limit=10)
// var products = {
//   "list": [
//     {
//       "id": 1,
//       "title": "Essence Mascara Lash Princess",
//       "description":
//           "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
//       "category": "beauty",
//       "price": 9.99,
//       "discountPercentage": 10.48,
//       "rating": 2.56,
//       "stock": 99,
//       "tags": ["beauty", "mascara"],
//       "brand": "Essence",
//       "sku": "BEA-ESS-ESS-001",
//       "weight": 4,
//       "dimensions": {"width": 15.14, "height": 13.08, "depth": 22.99},
//       "warrantyInformation": "1 week warranty",
//       "shippingInformation": "Ships in 3-5 business days",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 3,
//           "comment": "Would not recommend!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Eleanor Collins",
//           "reviewerEmail": "eleanor.collins@x.dummyjson.com",
//         },
//         {
//           "rating": 4,
//           "comment": "Very satisfied!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Lucas Gordon",
//           "reviewerEmail": "lucas.gordon@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Highly impressed!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Eleanor Collins",
//           "reviewerEmail": "eleanor.collins@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "No return policy",
//       "minimumOrderQuantity": 48,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.053Z",
//         "updatedAt": "2025-04-30T09:41:02.053Z",
//         "barcode": "5784719087687",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
//     },
//     {
//       "id": 2,
//       "title": "Eyeshadow Palette with Mirror",
//       "description":
//           "The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it's convenient for on-the-go makeup application.",
//       "category": "beauty",
//       "price": 19.99,
//       "discountPercentage": 18.19,
//       "rating": 2.86,
//       "stock": 34,
//       "tags": ["beauty", "eyeshadow"],
//       "brand": "Glamour Beauty",
//       "sku": "BEA-GLA-EYE-002",
//       "weight": 9,
//       "dimensions": {"width": 9.26, "height": 22.47, "depth": 27.67},
//       "warrantyInformation": "1 year warranty",
//       "shippingInformation": "Ships in 2 weeks",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 5,
//           "comment": "Great product!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Savannah Gomez",
//           "reviewerEmail": "savannah.gomez@x.dummyjson.com",
//         },
//         {
//           "rating": 4,
//           "comment": "Awesome product!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Christian Perez",
//           "reviewerEmail": "christian.perez@x.dummyjson.com",
//         },
//         {
//           "rating": 1,
//           "comment": "Poor quality!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Nicholas Bailey",
//           "reviewerEmail": "nicholas.bailey@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "7 days return policy",
//       "minimumOrderQuantity": 20,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.053Z",
//         "updatedAt": "2025-04-30T09:41:02.053Z",
//         "barcode": "9170275171413",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/1.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp",
//     },
//     {
//       "id": 3,
//       "title": "Powder Canister",
//       "description":
//           "The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.",
//       "category": "beauty",
//       "price": 14.99,
//       "discountPercentage": 9.84,
//       "rating": 4.64,
//       "stock": 89,
//       "tags": ["beauty", "face powder"],
//       "brand": "Velvet Touch",
//       "sku": "BEA-VEL-POW-003",
//       "weight": 8,
//       "dimensions": {"width": 29.27, "height": 27.93, "depth": 20.59},
//       "warrantyInformation": "3 months warranty",
//       "shippingInformation": "Ships in 1-2 business days",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 4,
//           "comment": "Would buy again!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Alexander Jones",
//           "reviewerEmail": "alexander.jones@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Highly impressed!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Elijah Cruz",
//           "reviewerEmail": "elijah.cruz@x.dummyjson.com",
//         },
//         {
//           "rating": 1,
//           "comment": "Very dissatisfied!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Avery Perez",
//           "reviewerEmail": "avery.perez@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "No return policy",
//       "minimumOrderQuantity": 22,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.053Z",
//         "updatedAt": "2025-04-30T09:41:02.053Z",
//         "barcode": "8418883906837",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/beauty/powder-canister/1.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/beauty/powder-canister/thumbnail.webp",
//     },
//     {
//       "id": 4,
//       "title": "Red Lipstick",
//       "description":
//           "The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.",
//       "category": "beauty",
//       "price": 12.99,
//       "discountPercentage": 12.16,
//       "rating": 4.36,
//       "stock": 91,
//       "tags": ["beauty", "lipstick"],
//       "brand": "Chic Cosmetics",
//       "sku": "BEA-CHI-LIP-004",
//       "weight": 1,
//       "dimensions": {"width": 18.11, "height": 28.38, "depth": 22.17},
//       "warrantyInformation": "3 year warranty",
//       "shippingInformation": "Ships in 1 week",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 4,
//           "comment": "Great product!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Liam Garcia",
//           "reviewerEmail": "liam.garcia@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Great product!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Ruby Andrews",
//           "reviewerEmail": "ruby.andrews@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Would buy again!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Clara Berry",
//           "reviewerEmail": "clara.berry@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "7 days return policy",
//       "minimumOrderQuantity": 40,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.053Z",
//         "updatedAt": "2025-04-30T09:41:02.053Z",
//         "barcode": "9467746727219",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/beauty/red-lipstick/1.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/beauty/red-lipstick/thumbnail.webp",
//     },
//   ],
//   "total": 194,
//   //! 0*10,1*10,2*10,3*10,4*10,
//   "skip": 0, //! 10,20,30,40,50
//   "limit": 10,
// };
// //* (GET)-> (/home/products/1)
// var product = {
//   "id": 1,
//   "title": "Essence Mascara Lash Princess",
//   "description":
//       "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
//   "category": "beauty",
//   "price": 9.99,
//   "discountPercentage": 10.48,
//   "rating": 2.56,
//   "stock": 99,
//   "tags": ["beauty", "mascara"],
//   "brand": "Essence",
//   "sku": "BEA-ESS-ESS-001",
//   "weight": 4,
//   "dimensions": {"width": 15.14, "height": 13.08, "depth": 22.99},
//   "warrantyInformation": "1 week warranty",
//   "shippingInformation": "Ships in 3-5 business days",
//   "availabilityStatus": "In Stock",
//   "reviews": [
//     {
//       "rating": 3,
//       "comment": "Would not recommend!",
//       "date": "2025-04-30T09:41:02.053Z",
//       "reviewerName": "Eleanor Collins",
//       "reviewerEmail": "eleanor.collins@x.dummyjson.com",
//     },
//     {
//       "rating": 4,
//       "comment": "Very satisfied!",
//       "date": "2025-04-30T09:41:02.053Z",
//       "reviewerName": "Lucas Gordon",
//       "reviewerEmail": "lucas.gordon@x.dummyjson.com",
//     },
//     {
//       "rating": 5,
//       "comment": "Highly impressed!",
//       "date": "2025-04-30T09:41:02.053Z",
//       "reviewerName": "Eleanor Collins",
//       "reviewerEmail": "eleanor.collins@x.dummyjson.com",
//     },
//   ],
//   "returnPolicy": "No return policy",
//   "minimumOrderQuantity": 48,
//   "meta": {
//     "createdAt": "2025-04-30T09:41:02.053Z",
//     "updatedAt": "2025-04-30T09:41:02.053Z",
//     "barcode": "5784719087687",
//     "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//   },
//   "images": [
//     "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
//   ],
//   "thumbnail":
//       "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
// };
// //* (GET)-> (/home/products/category/smartphones?skip=0&limit=10)
// var productsCategorySmartPhones = {
//   "list": [
//     {
//       "id": 121,
//       "title": "iPhone 5s",
//       "description":
//           "The iPhone 5s is a classic smartphone known for its compact design and advanced features during its release. While it's an older model, it still provides a reliable user experience.",
//       "category": "smartphones",
//       "price": 199.99,
//       "discountPercentage": 12.91,
//       "rating": 2.83,
//       "stock": 25,
//       "tags": ["smartphones", "apple"],
//       "brand": "Apple",
//       "sku": "SMA-APP-IPH-121",
//       "weight": 2,
//       "dimensions": {"width": 5.29, "height": 18.38, "depth": 17.72},
//       "warrantyInformation": "Lifetime warranty",
//       "shippingInformation": "Ships in 1 month",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 5,
//           "comment": "Highly recommended!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Jace Smith",
//           "reviewerEmail": "jace.smith@x.dummyjson.com",
//         },
//         {
//           "rating": 1,
//           "comment": "Not as described!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Logan Torres",
//           "reviewerEmail": "logan.torres@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Very satisfied!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Harper Kelly",
//           "reviewerEmail": "harper.kelly@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "60 days return policy",
//       "minimumOrderQuantity": 3,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.054Z",
//         "updatedAt": "2025-04-30T09:41:02.054Z",
//         "barcode": "8814683940853",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/1.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/2.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/3.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp",
//     },
//     {
//       "id": 122,
//       "title": "iPhone 6",
//       "description":
//           "The iPhone 6 is a stylish and capable smartphone with a larger display and improved performance. It introduced new features and design elements, making it a popular choice in its time.",
//       "category": "smartphones",
//       "price": 299.99,
//       "discountPercentage": 6.69,
//       "rating": 3.41,
//       "stock": 60,
//       "tags": ["smartphones", "apple"],
//       "brand": "Apple",
//       "sku": "SMA-APP-IPH-122",
//       "weight": 7,
//       "dimensions": {"width": 11, "height": 9.1, "depth": 9.67},
//       "warrantyInformation": "1 month warranty",
//       "shippingInformation": "Ships overnight",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 3,
//           "comment": "Disappointing product!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Stella Morris",
//           "reviewerEmail": "stella.morris@x.dummyjson.com",
//         },
//         {
//           "rating": 4,
//           "comment": "Excellent quality!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Nolan Gonzalez",
//           "reviewerEmail": "nolan.gonzalez@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Great value for money!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Benjamin Foster",
//           "reviewerEmail": "benjamin.foster@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "7 days return policy",
//       "minimumOrderQuantity": 5,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.054Z",
//         "updatedAt": "2025-04-30T09:41:02.054Z",
//         "barcode": "9922357685013",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-6/1.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-6/2.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-6/3.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/smartphones/iphone-6/thumbnail.webp",
//     },
//     {
//       "id": 123,
//       "title": "iPhone 13 Pro",
//       "description":
//           "The iPhone 13 Pro is a cutting-edge smartphone with a powerful camera system, high-performance chip, and stunning display. It offers advanced features for users who demand top-notch technology.",
//       "category": "smartphones",
//       "price": 1099.99,
//       "discountPercentage": 9.37,
//       "rating": 4.12,
//       "stock": 56,
//       "tags": ["smartphones", "apple"],
//       "brand": "Apple",
//       "sku": "SMA-APP-IPH-123",
//       "weight": 8,
//       "dimensions": {"width": 12.63, "height": 5.28, "depth": 14.29},
//       "warrantyInformation": "3 year warranty",
//       "shippingInformation": "Ships in 2 weeks",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 5,
//           "comment": "Would buy again!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Christian Perez",
//           "reviewerEmail": "christian.perez@x.dummyjson.com",
//         },
//         {
//           "rating": 3,
//           "comment": "Not worth the price!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Liam Gonzalez",
//           "reviewerEmail": "liam.gonzalez@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Very satisfied!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Tristan Scott",
//           "reviewerEmail": "tristan.scott@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "7 days return policy",
//       "minimumOrderQuantity": 1,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.054Z",
//         "updatedAt": "2025-04-30T09:41:02.054Z",
//         "barcode": "4998438802308",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/1.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/2.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/thumbnail.webp",
//     },
//     {
//       "id": 124,
//       "title": "iPhone X",
//       "description":
//           "The iPhone X is a flagship smartphone featuring a bezel-less OLED display, facial recognition technology (Face ID), and impressive performance. It represents a milestone in iPhone design and innovation.",
//       "category": "smartphones",
//       "price": 899.99,
//       "discountPercentage": 19.59,
//       "rating": 2.51,
//       "stock": 37,
//       "tags": ["smartphones", "apple"],
//       "brand": "Apple",
//       "sku": "SMA-APP-IPH-124",
//       "weight": 1,
//       "dimensions": {"width": 21.88, "height": 24.19, "depth": 14.19},
//       "warrantyInformation": "3 months warranty",
//       "shippingInformation": "Ships in 3-5 business days",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 4,
//           "comment": "Highly recommended!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Tyler Davis",
//           "reviewerEmail": "tyler.davis@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Great product!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Aria Parker",
//           "reviewerEmail": "aria.parker@x.dummyjson.com",
//         },
//         {
//           "rating": 2,
//           "comment": "Not as described!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Lily Torres",
//           "reviewerEmail": "lily.torres@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "7 days return policy",
//       "minimumOrderQuantity": 2,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.054Z",
//         "updatedAt": "2025-04-30T09:41:02.054Z",
//         "barcode": "3034949322264",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/1.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/2.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/3.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/thumbnail.webp",
//     },
//     {
//       "id": 125,
//       "title": "Oppo A57",
//       "description":
//           "The Oppo A57 is a mid-range smartphone known for its sleek design and capable features. It offers a balance of performance and affordability, making it a popular choice.",
//       "category": "smartphones",
//       "price": 249.99,
//       "discountPercentage": 2.43,
//       "rating": 3.94,
//       "stock": 19,
//       "tags": ["smartphones", "oppo"],
//       "brand": "Oppo",
//       "sku": "SMA-OPP-OPP-125",
//       "weight": 5,
//       "dimensions": {"width": 7.2, "height": 10.74, "depth": 23.68},
//       "warrantyInformation": "Lifetime warranty",
//       "shippingInformation": "Ships in 3-5 business days",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 4,
//           "comment": "Excellent quality!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Scarlett Wright",
//           "reviewerEmail": "scarlett.wright@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Excellent quality!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Jacob Cooper",
//           "reviewerEmail": "jacob.cooper@x.dummyjson.com",
//         },
//         {
//           "rating": 2,
//           "comment": "Poor quality!",
//           "date": "2025-04-30T09:41:02.054Z",
//           "reviewerName": "Zoe Nicholson",
//           "reviewerEmail": "zoe.nicholson@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "90 days return policy",
//       "minimumOrderQuantity": 3,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.054Z",
//         "updatedAt": "2025-04-30T09:41:02.054Z",
//         "barcode": "0651223722522",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/smartphones/oppo-a57/1.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/oppo-a57/2.webp",
//         "https://cdn.dummyjson.com/product-images/smartphones/oppo-a57/3.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/smartphones/oppo-a57/thumbnail.webp",
//     },
//   ],
//   "total": 16,
//   "skip": 0,
//   "limit": 5,
// };
// //* (GET)-> (/home/products/brand/Essence?skip=0&limit=5)
// var productsBrandEssence = {
//   "list": [
//     {
//       "id": 1,
//       "title": "Essence Mascara Lash Princess",
//       "description":
//           "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
//       "category": "beauty",
//       "price": 9.99,
//       "discountPercentage": 10.48,
//       "rating": 2.56,
//       "stock": 99,
//       "tags": ["beauty", "mascara"],
//       "brand": "Essence",
//       "sku": "BEA-ESS-ESS-001",
//       "weight": 4,
//       "dimensions": {"width": 15.14, "height": 13.08, "depth": 22.99},
//       "warrantyInformation": "1 week warranty",
//       "shippingInformation": "Ships in 3-5 business days",
//       "availabilityStatus": "In Stock",
//       "reviews": [
//         {
//           "rating": 3,
//           "comment": "Would not recommend!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Eleanor Collins",
//           "reviewerEmail": "eleanor.collins@x.dummyjson.com",
//         },
//         {
//           "rating": 4,
//           "comment": "Very satisfied!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Lucas Gordon",
//           "reviewerEmail": "lucas.gordon@x.dummyjson.com",
//         },
//         {
//           "rating": 5,
//           "comment": "Highly impressed!",
//           "date": "2025-04-30T09:41:02.053Z",
//           "reviewerName": "Eleanor Collins",
//           "reviewerEmail": "eleanor.collins@x.dummyjson.com",
//         },
//       ],
//       "returnPolicy": "No return policy",
//       "minimumOrderQuantity": 48,
//       "meta": {
//         "createdAt": "2025-04-30T09:41:02.053Z",
//         "updatedAt": "2025-04-30T09:41:02.053Z",
//         "barcode": "5784719087687",
//         "qrCode": "https://cdn.dummyjson.com/public/qr-code.png",
//       },
//       "images": [
//         "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
//       ],
//       "thumbnail":
//           "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
//     },
//   ],
//   "total": 1,
//   "skip": 0,
//   "limit": 5,
// };

// //* (GET)-> (/portfoilo/userData)
// var portfoiloUserData = {
//   "message": {
//     "_id": "688dbd90f99e8aa451d7b7a1",
//     "name": "Aya",
//     "phone": "01234567890",
//     "email": "ayaabdelmon@gmail.com",
//     "address": "not added",
//     "image": "images/portfolio/1754119906026-161680.png",
//   },
//   // http://marketi-app.onrender.com/api/v1/portfolio/simple.jpg
//   // https://supermarket-dan1.onrender.com/api/v1/images/portfolio/1755580212413-168904.jpg
// };
