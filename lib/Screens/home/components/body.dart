import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/categories.dart';
import 'package:geo/Screens/home/components/discount_banner.dart';
import 'package:geo/Screens/home/components/home_header.dart';
import 'package:geo/Screens/plants/components/plants.dart';
import '../../home/components/special_offers.dart';
import '../../home/components/popular_products.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 30),
          HomeHeader(),
          SizedBox(height: 40),
          DiscountBanner(),
          SizedBox(height: 20),
          Plants(),
          SizedBox(height: 20),
          Categories(),
          SizedBox(height: 40),
          SpecialOffers(),
          SizedBox(height: 40),
          PopularProducts(),
        ],
      ),
    );
  }
}
