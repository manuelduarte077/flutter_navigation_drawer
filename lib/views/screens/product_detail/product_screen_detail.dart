import 'package:flutter/material.dart';
import 'package:navigation_drawer_challenge/data/models/models.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  static const String routeName = 'product-detail';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      builder: (_) => ProductDetailScreen(product: product),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Product Detail',
        ),
      ),
      body: const Center(
        child: Text('Product Detail Screen'),
      ),
    );
  }
}
