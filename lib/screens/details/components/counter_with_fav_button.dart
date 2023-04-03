import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_couter.dart';

class CouterWithFavButton extends StatelessWidget {
  const CouterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
              color: Color(0xffff6464), shape: BoxShape.circle),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}
