import 'package:flutter/material.dart';
import 'package:geo/colors.dart';


class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: colors.lightWhite2,
      child: Column(
        children: const [
          SizedBox(
            height: 111,
          ),
          ExpansionTile(
            leading: Icon(
              Icons.set_meal_sharp,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Comprises Meat',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.free_cancellation_sharp,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Fresh Produce',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.drag_indicator_rounded,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Dairy',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.baby_changing_station,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Baked Goods aisles',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.kitchen,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Non-Food Items',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.pets,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Pet Supplies',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.breakfast_dining,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Bread',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:16
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.free_breakfast_sharp,
              color: colors.black,
              size: 16,
            ),
            title: Text(
              'Milk',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize:16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
