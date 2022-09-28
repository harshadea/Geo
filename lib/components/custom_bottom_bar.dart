import 'package:flutter/material.dart';
import 'package:geo/Screens/home/home_screen.dart';
import 'package:geo/Screens/profile/profile_screen.dart';
import 'package:geo/colors.dart';
import 'package:get/get.dart';

enum MenuState { home, favourite, message, profile }

class CustomBottNavBar extends StatelessWidget {
  const CustomBottNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.shop,
                  color: MenuState.home == selectedMenu
                      ? PrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: (){
                  Get.to(const HomeScreen());
                }
            ),
            IconButton(
              icon: Icon(Icons.favorite_border,
                color: MenuState.favourite == selectedMenu
                    ? PrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat_bubble,
                color: MenuState.message == selectedMenu
                    ? PrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box,
                color: MenuState.profile == selectedMenu
                    ? PrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {
                Get.to(() => const ProfileScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
