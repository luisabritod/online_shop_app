import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Products.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(text: 'Price\n'),
                TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
