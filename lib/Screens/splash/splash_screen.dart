import 'package:flutter/material.dart';
import '../splash/Components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/Splash_Screen";

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Body(),
    );
  }
}
