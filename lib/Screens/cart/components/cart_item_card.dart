import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/models/Cart.dart';
import 'package:geo/colors.dart';


class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(
                fontSize: 16,
                color: colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(color: PrimaryColor),
                children: [
                  TextSpan(
                    text: "x${demoCarts[0].numOfItems}",
                    style: const TextStyle(color: TextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
