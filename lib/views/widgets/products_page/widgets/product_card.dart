import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:navigation_drawer_challenge/animations/animations.dart';
import 'package:navigation_drawer_challenge/data/models/product.dart';
import 'package:navigation_drawer_challenge/providers/providers.dart';

import 'animated_product_description.dart';
import 'product_image.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard(
    this.index,
    this.product, {
    Key? key,
  }) : super(key: key);

  final int index;
  final Product product;

  @override
  Widget build(BuildContext context, ref) {
    final categoryAnimationController = ref.watch(
      categoryAnimationControllerProvider,
    );

    return Padding(
      padding: EdgeInsets.only(
        left: index.isOdd ? 0 : 20,
        right: index.isEven ? 0 : 20,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'product-detail', arguments: product);
        },
        child: Column(
          children: [
            /**
             * Image
             */
            Expanded(
              flex: 14,
              child: FlipAnimation(
                animation: categoryAnimationController.rotateAnimation(index),
                child: ProductImage(image: product.image),
              ),
            ),
            /**
             * Name and Price
             */
            Expanded(
              flex: 6,
              child: AnimatedProductDescription(
                animation: categoryAnimationController.productTextAnimation(
                  index,
                ),
                name: product.name,
                price: product.price,
              ),
            )
          ],
        ),
      ),
    );
  }
}
