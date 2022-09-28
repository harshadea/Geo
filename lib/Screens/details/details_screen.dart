import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/models/product.dart';
import 'package:geo/colors.dart';
import 'package:get/get.dart';

import '../details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailArguments;
    return Scaffold(
      backgroundColor: colors.lightWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          padding: EdgeInsets.zero,
          color: colors.white,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colors.black,
          ),
        ),
      ),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailArguments {
  late final Product product;

  ProductDetailArguments({required this.product});
}
