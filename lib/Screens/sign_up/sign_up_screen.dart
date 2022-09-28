import 'package:flutter/material.dart';
import 'package:geo/colors.dart';
import '../../Screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
              colors: <Color>[Colors.deepOrange.shade300, colors.grad1Color],
            )
          ),
        ),
        centerTitle: true,
        title: const Text("Sign Up", style: TextStyle(
          fontWeight: FontWeight.bold, color: colors.black,
        ),
        ),
      ),
      body: const Body(),
    );
  }
}
