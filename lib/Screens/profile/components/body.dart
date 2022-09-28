import 'package:flutter/material.dart';
import 'package:geo/Screens/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../components/profile_pic.dart';
import '../components/profile_menu.dart';

import '../../notify/notification.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 66),
        const ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          text: 'My Account',
          press: () {},
          icon: const Icon(Icons.account_box),
        ),
        ProfileMenu(
          text: 'Notifications',
          press: () {
            Get.to(const NotificationScreen());
          },
          icon: const Icon(Icons.notifications),
        ),
        ProfileMenu(
          text: 'Settings',
          press: () {},
          icon: const Icon(Icons.settings),
        ),
        ProfileMenu(
          text: 'Help Center',
          press: () {},
          icon: const Icon(Icons.help),
        ),
        ProfileMenu(
          text: 'Log Out',
          press: () {
            Get.to(const SplashScreen());
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
