import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

class Default_Button extends StatelessWidget {
  const Default_Button({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: colors.orange)),
          ),
          foregroundColor: MaterialStateProperty.all(colors.orange),
          backgroundColor: MaterialStateProperty.all(colors.orange),
        ),
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: colors.white),
        ),
      ),
    );
  }
}
