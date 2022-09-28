import 'package:flutter/material.dart';
import 'package:geo/Screens/sign_in/sign_in_screen.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/default_button.dart';
import 'package:get/get.dart';

import '../Components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final formKey = GlobalKey<FormState>();
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Geo, Let's shop",
      "image": "assets/images/splash1.jpg"
    },
    {
      "text": "We help people connect with store",
      "image": "assets/images/splash2.jpg"
    },
    {
      "text": "We show the easy way to shop",
      "image": "assets/images/splash3.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                  text: splashData[index]['text']!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Default_Button(text: 'Continue',
                    press: () {
                      Get.to(() => SignInScreen());
                    },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: AnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? PrimaryColor : colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
