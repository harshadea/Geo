import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.icon,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  final Widget icon;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: SecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          if (numOfItems != 0)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: colors.white),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: const TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
