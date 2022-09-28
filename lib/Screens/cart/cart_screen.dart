import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/models/Cart.dart';
import 'package:geo/Screens/home/home_screen.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/default_button.dart';
import 'package:get/get.dart';

import '../cart/components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckOurCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Center(
            child: Text(
              "Your Cart",
              style: TextStyle(
                color: colors.black,
              ),
            ),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(),
          const Text(
            'Swipe left to remove item',
            style: TextStyle(
              fontSize: 10,
              color: colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class CheckOurCart extends StatelessWidget {
  const CheckOurCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 174,
      decoration: BoxDecoration(
        color: colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.receipt)),
                const Spacer(),
                const Text("Add Voucher Code"),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: TextColor,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text.rich(
                  TextSpan(text: "Total:\n", children: [
                    TextSpan(
                      text: "\$337.15",
                      style: TextStyle(fontSize: 16, color: colors.black),
                    ),
                  ]),
                ),
                const Spacer(),
                SizedBox(
                  width: 190,
                  child: Default_Button(
                    text: "Check Out",
                    press: () {
                      Get.to(() => const HomeScreen());
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
