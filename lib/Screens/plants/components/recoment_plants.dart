import 'package:flutter/material.dart';
import 'package:geo/Screens/plants/plantscreen.dart';
import 'package:geo/colors.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlantCard(
            image: 'assets/images/plant1.jpeg',
            title: 'Samantha',
            place: 'Karnataka',
            price: 2240,
            press: () {},
          ),
          RecomendedPlantCard(
            image: 'assets/images/plant1.jpeg',
            title: 'Paradise',
            place: 'Kerala',
            price: 4000,
            press: () {},
          ),
          RecomendedPlantCard(
            image: 'assets/images/plant1.jpeg',
            title: 'Litchi',
            place: 'Tamilnadu',
            price: 3340,
            press: () {},
          ),
          RecomendedPlantCard(
            image: 'assets/images/plant1.jpeg',
            title: 'Jamanthi',
            place: 'Kozhikode',
            price: 2340,
            press: () {},
          ),
          RecomendedPlantCard(
            image: 'assets/images/plant1.jpeg',
            title: 'MoneyPlant',
            place: 'gudalur',
            price: 599,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.place,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, place;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: PlantScreen.DefaultPadding,
        top: PlantScreen.DefaultPadding / 2,
        bottom: PlantScreen.DefaultPadding * 0.4,
      ),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(PlantScreen.DefaultPadding),
              decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: PlantScreen.PrimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: place.toUpperCase(),
                          style: TextStyle(
                            color: PlantScreen.PrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: PlantScreen.PrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
