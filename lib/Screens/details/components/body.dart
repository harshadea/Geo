import 'package:flutter/material.dart';
import 'package:geo/Screens/cart/cart_screen.dart';
import 'package:geo/Screens/details/components/product_images.dart';
import 'package:geo/Screens/home/components/models/product.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/default_button.dart';
import 'package:get/get.dart';

import '../../details/components/product_description.dart';
import '../../details/components/top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: colors.white,
            child: ProductDescription(product: product,
              pressOnSeeMore: (){},
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.15,
              right: MediaQuery.of(context).size.width * 0.15,
              top: 15,
              bottom: 40,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Default_Button(text: "Add to Cart",
                press: (){
                Get.to (() => const CartScreen());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

