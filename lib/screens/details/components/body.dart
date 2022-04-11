import 'package:flutter/material.dart';
import 'package:goread/constants.dart';
import 'package:goread/models/product.dart';
import 'package:goread/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_page.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // biar kita tau total tinggi dan lebarnya
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  height: 600,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndPage(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      const CounterWithFavBtn(),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTtitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
