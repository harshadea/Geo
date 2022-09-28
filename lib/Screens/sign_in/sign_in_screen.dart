import 'package:flutter/material.dart';
import 'package:geo/colors.dart';
import '../sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/Sign_In_Screen";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.lightWhite2,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign In",
          style: TextStyle(color: colors.black, fontSize: 18,fontWeight: FontWeight.w600),
        ),
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.deepOrange.shade900, colors.grad1Color],
            ),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
