import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

import 'components/body.dart';
import 'components/plant_plant_nav_bar.dart';

class PlantScreen extends StatelessWidget {
  static String routeName = "/Plant";
  const PlantScreen({Key? key}) : super(key: key);

  static const PrimaryColor = Color(0xFF0C9869);
  static const TextColor = Color(0xFF3C4046);
  static const Colour = Color(0xFF000000);

  static const double DefaultPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Drawer(
          child: Column(
        children: [
          const SizedBox(
            height: 111,
          ),
          ExpansionTile(
            leading: Image.asset(
              'assets/images/plant1.jpeg',
              height: 50,
            ),
            title: TextButton(
              onPressed: () {},
              child: const Text(
                'Money Plants',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colors.green),
              ),
            ),
            children: [
              ExpansionTile(
                  leading: Image.asset(
                    'assets/images/plant.jpg',
                    height: 50,
                    width: 33,
                  ),
                  title: const Text(
                    'Golden Money Plant',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: colors.green),
                  ),
              ),
              ExpansionTile(
                  leading: Image.asset(
                    'assets/images/plant.jpg',
                    height: 50,
                    width: 33,
                  ),
                  title: const Text(
                    'Golden Money Plant',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: colors.primary),
                  ),
              ),
            ],
          ),
          const SizedBox(),
          ExpansionTile(
            leading: Image.asset(
              'assets/images/plant1.jpeg',
              height: 50,
            ),
            title: TextButton(
              onPressed: () {},
              child: const Text(
                'Rose',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colors.green),
              ),
            ),
          ),
          const SizedBox(),
          ExpansionTile(
            leading: Image.asset(
              'assets/images/plant1.jpeg',
              height: 50,
            ),
            title: TextButton(
              onPressed: () {},
              child: const Text(
                'Garden',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colors.green),
              ),
            ),
          ),
          const SizedBox(),
          ExpansionTile(
            leading: Image.asset(
              'assets/images/plant1.jpeg',
              height: 50,
            ),
            title: TextButton(
              onPressed: () {},
              child: const Text(
                'Decoration',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colors.green),
              ),
            ),
            children: const [
              ExpansionTile(title: Text('hhh')),
            ],
          ),
          const SizedBox(),
          ExpansionTile(
            leading: Image.asset(
              'assets/images/plant1.jpeg',
              height: 50,
            ),
            title: TextButton(
              onPressed: () {},
              child: const Text(
                'Bonsai tree',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colors.green),
              ),
            ),
          ),
          const SizedBox(),
        ],
      )),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(
        DefaultPadding: DefaultPadding,
        PrimaryColor: PrimaryColor,
        selectedMenu: MenuState.home,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade600,
        ),
      ),
      centerTitle: true,
      title: const Text(
        "Plant Screen",
        style: TextStyle(fontWeight: FontWeight.bold, color: colors.white),
      ),
    );
  }
}
