import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

import '../otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Otp Verification',style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: colors.black54,
        ),
        ),
      ),
      body: const Body(),
    );
  }
}
