import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/section_title.dart';
import 'package:geo/colors.dart';


class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/banner2.jpg',
                press: () {  },
                numOfBrands:18 ,
                category: '',
              ),
              const SizedBox(height: 20),
              SpecialOfferCard(
                image: 'assets/images/banner2.jpg',
                press: () {  },
                numOfBrands:18 ,
                category: '',
              ),
              const SizedBox(height: 20),
              SpecialOfferCard(image: 'assets/images/banner2.jpg',
                press: () {  },
                numOfBrands:24,
                category: '',
              ),
              const SizedBox(height: 20),
              SpecialOfferCard(image: 'assets/images/banner2.jpg',
                press: () {  },
                numOfBrands:24,
                category: '',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 15),
      child: SizedBox(
        width: 200,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "$numOfBrands Brands",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
