import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(0,20,20,20),
        child: Icon(Icons.email_outlined,size: 18)
    );
  }
}