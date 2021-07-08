import '../util/category_type.dart';

class Product {
  String id;
  String title;
  String subTitle;
  String imageProducts;
  String imageSeller;
  CategoryType category;
  String price;
  int realPrice;
  String storeName;
  String city;
  String description;

  Product({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.imageProducts,
    required this.imageSeller,
    required this.category,
    required this.price,
    required this.realPrice,
    required this.storeName,
    required this.city,
    required this.description
  });
}