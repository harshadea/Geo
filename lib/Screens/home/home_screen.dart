import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/body.dart';
import 'package:geo/Screens/home/menu/menu.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/custom_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.lightWhite,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('G  E  O'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.purple.shade900, Colors.purple],
            ),
          ),
        ),
      ),
      drawer: const Menu(),
      body: const Body(),
      bottomNavigationBar: const CustomBottNavBar(selectedMenu: MenuState.home),
    );
  }
}
