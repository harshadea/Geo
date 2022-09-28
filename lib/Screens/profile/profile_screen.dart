import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

import '../../components/custom_bottom_bar.dart';
import '../../Screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.black12,
      // appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
