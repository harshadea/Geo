import 'package:flutter/material.dart';
import 'package:geo/Screens/details/details_screen.dart';
import 'package:geo/Screens/home/components/models/product.dart';
import 'package:geo/Screens/home/components/section_title.dart';
import 'package:get/get.dart';

import '../../home/components/product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: .6
            ),
            itemCount: demoProducts.length,
            itemBuilder: (context, index) {
              return ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Get.to(
                      () => const DetailsScreen(),
                      arguments:
                          ProductDetailArguments(product: demoProducts[index]),
                    );
                  });
            })
      ],
    );
  }
}
