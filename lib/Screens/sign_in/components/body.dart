import 'package:flutter/material.dart';
import 'package:geo/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../sign_in/sign_form.dart';
import '../../sign_in/components/social_card.dart';
import '../../../components/no_account_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(
                    color: colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign in with your email and password \n"
                "or\n"
                " Continue with social media",
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 38,
              ),
              const SignForm(),
              const SizedBox(
                height: 38,
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
                height: 38,
              ),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
