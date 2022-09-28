import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/search_field.dart';
import 'package:get/get.dart';

import '../../home/components/icon_btn_with_counter.dart';
import '../../cart/cart_screen.dart';
import '../../notify/notification.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            icon: Image.asset("assets/images/scooter.png"),
            numOfItems: 4,
            press: () {
              Get.to(() => const CartScreen());
            },
          ),
          IconBtnWithCounter(
            icon: Image.asset("assets/images/bell.png"),
            numOfItems: 4,
            press: () {
              Get.to(() => const NotificationScreen());
            },
          ),
        ],
      ),
    );
  }
}
