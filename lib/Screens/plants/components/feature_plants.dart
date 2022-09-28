import 'package:flutter/material.dart';
import 'package:geo/Screens/plants/plantscreen.dart';


class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FuturePlantCard(
            image: "assets/images/bottom1.jpg",
            press: () {},
          ),
          FuturePlantCard(
            image: "assets/images/bottom2.jpg",
            press: () {},
          ),
          FuturePlantCard(
            image: "assets/images/bottom3.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FuturePlantCard extends StatelessWidget {
  const FuturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: PlantScreen.DefaultPadding,
          top: PlantScreen.DefaultPadding,
          bottom: PlantScreen.DefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
