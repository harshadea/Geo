import 'package:flutter/material.dart';
import 'package:geo/Screens/sign_in/components/social_card.dart';
import 'package:geo/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../sign_up/components/sign_up_form.dart';

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
              const SizedBox(),
              const Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: colors.black,
                  height: 1.5,
                ),
              ),
              const Text(
                "Complete your details or Continue \n with Social Media",
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const SignUpForm(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/images/google.jpg',
                    press: () {
                      launchUrl(Uri.parse("https://www.google.co.in"));
                    },
                  ),
                  SocialCard(
                    icon: 'assets/images/facebook.jpg',
                    press: () {
                      launchUrl(Uri.parse("https://www.facebook.com"));
                    },
                  ),
                  SocialCard(
                    icon: 'assets/images/instagram1.jpg',
                    press: () {
                      launchUrl(Uri.parse("https://www.instagram.com"));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "By continueing your confirm that you agree \n with our Term and Conditions",
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 11,
              )
            ],
          ),
        ),
      ),
    );
  }
}
