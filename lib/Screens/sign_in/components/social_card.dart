import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(12),
          height: 40,
          width: 40,
          decoration:
              const BoxDecoration(color: colors.white, shape: BoxShape.circle),
          child: Image.asset(icon)),
    );
  }
}
