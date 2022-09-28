import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

import '../complete_profile/components/body.dart';
class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: colors.black54,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
