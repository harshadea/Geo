import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

import '../../complete_profile/components/complete_profileform.dart';

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
            children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                "Complete Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: colors.black,
                ),
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: 30,
              ),
              Text(
                "By continueing your confirm that you agree \n with our *Terms and Conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
