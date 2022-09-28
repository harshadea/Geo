import 'package:flutter/material.dart';
import 'package:geo/Screens/plants/plantscreen.dart';
import 'package:geo/colors.dart';
import 'package:get/get.dart';

import '../../profile/profile_screen.dart';

enum MenuState { home, favourite, profile }

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.DefaultPadding,
    required this.PrimaryColor,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  final double DefaultPadding;
  final Color PrimaryColor;

  @override
  Widget build(BuildContext context) {
    // const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.only(
        left: DefaultPadding * 3,
        right: DefaultPadding * 2,
        bottom: DefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: PlantScreen.PrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.ac_unit,
                  size: 33,
                  color: MenuState.home == selectedMenu
                      ? PrimaryColor
                      : PlantScreen.Colour,
                ),
                onPressed: () {
                  Get.to(const PlantScreen());
                }),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: 33,
                color: MenuState.favourite == selectedMenu
                    ? PrimaryColor
                    : PlantScreen.Colour,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_box,
                size: 33,
                color: MenuState.profile == selectedMenu
                    ? PrimaryColor
                    : PlantScreen.Colour,
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
