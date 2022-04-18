import 'package:flutter/material.dart';

import 'package:navigation_drawer_challenge/animations/animations.dart';
import 'package:navigation_drawer_challenge/theme/theme.dart';

class AnimatedProductDescription extends StatelessWidget {
  const AnimatedProductDescription({
    Key? key,
    required this.animation,
    required this.name,
    required this.price,
  }) : super(key: key);

  final Animation<Offset> animation;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: SlideUpAnimation(
            animation: animation,
            child: Text(
              name,
              style: productNameStyle,
              maxLines: 2,
            ),
          ),
        ),
        Expanded(
          child: SlideUpAnimation(
            animation: animation,
            child: Text(
              '$price USD',
              style: productPriceStyle,
            ),
          ),
        ),
      ],
    );
  }
}
