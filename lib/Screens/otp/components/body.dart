import 'package:flutter/material.dart';
import '../../otp/components/otp_form.dart';
import 'package:geo/colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "OTP Verification",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: colors.black,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text("We sent your code to Your phone number"),
              const SizedBox(
                height: 10,
              ),
              buildTimer(),
              const SizedBox(
                height: 100,
              ),
              const OtpForm(),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "${value!.toString()}",
            style: const TextStyle(color: PrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
