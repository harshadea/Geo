import 'package:flutter/material.dart';
import '../../colors.dart';
import '../forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/Forgot_Password_Screen";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.deepOrange.shade300, colors.grad1Color],
              )
          ),
        ),
        title: const Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,color: colors.black),),
      ),
      body: const Body(),
    );
  }
}
