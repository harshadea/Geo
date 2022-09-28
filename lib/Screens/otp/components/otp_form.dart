import 'package:flutter/material.dart';
import 'package:geo/Screens/sign_in/sign_in_screen.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/default_button.dart';
import 'package:get/get.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  // nextField(value: value, focusNode: pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                focusNode: pin2FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  // nextField(value: value, focusNode: pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                focusNode: pin3FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  // nextField(value: value, focusNode: pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                focusNode: pin4FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        Default_Button(
            text: "Continue",
            press: () {
              Get.to(() => const SignInScreen());
            }),
        const SizedBox(
          height: 70,
        ),
      ],
    ));
  }
}
