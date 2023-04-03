// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';

import 'package:online_shop_app/models/Products.dart';
import 'package:online_shop_app/screens/details/components/add_to_cart.dart';
import 'package:online_shop_app/screens/details/components/cart_couter.dart';
import 'package:online_shop_app/screens/details/components/color_and_size.dart';
import 'package:online_shop_app/screens/details/components/counter_with_fav_button.dart';
import 'package:online_shop_app/screens/details/components/description.dart';
import 'package:online_shop_app/screens/details/components/product_title_image.dart';

class BodyDetails extends StatelessWidget {
  Product product;
  BodyDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.32),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(children: [
                    ColorAndSize(product: product),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Description(product: product),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const CouterWithFavButton(),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    AddToCart(product: product)
                  ]),
                ),
                ProductTitle(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
