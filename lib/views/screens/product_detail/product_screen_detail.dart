import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static const String routeName = '/product-detail';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ProductDetailScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ProductDetailScreen'),
      ),
    );
  }
}
