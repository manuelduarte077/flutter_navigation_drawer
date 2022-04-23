import 'product_category_enum.dart';

class Product {
  final String name;
  final String price;
  final String image;
  final String? descripton;
  final ProductCategory productCategory;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    this.descripton,
    required this.productCategory,
  });
}
