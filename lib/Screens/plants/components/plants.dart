import 'package:flutter/material.dart';
import 'package:geo/Screens/plants/plantscreen.dart';
import 'package:geo/colors.dart';
import 'package:get/get.dart';

class Plants extends StatelessWidget {
  const Plants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 25,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.green, Colors.green.shade300],
        ),
        color: const Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          TextButton(
            child: const Text(
              "Plants",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: colors.white),
            ),
            onPressed: () {
              Get.to(() => const PlantScreen());
            },
          ),
        ],
      ),
    );
  }
}
