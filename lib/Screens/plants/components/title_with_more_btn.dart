import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../plantscreen.dart';



class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    Key? key, required this.title, required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PlantScreen.DefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(
            text: title,
          ),
          const Spacer(),
          TextButton(
            onPressed: press,
            child: const Text(
              'More',
              style: TextStyle(color: PlantScreen.PrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding:
            const EdgeInsets.only(left: PlantScreen.DefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: colors.green),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin:
              const EdgeInsets.only(right: PlantScreen.DefaultPadding / 4),
              height: 7,
            ),
          )
        ],
      ),
    );
  }
}
