import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final bool isFavourite, isPopular;

  Product({
    required this.images,
    required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

//demo products

List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/jeen1.jpg",
      "assets/images/jeen2.jpg",
      "assets/images/jeen3.jpg",
      "assets/images/jeen4.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0x0ffdec9c),
      Colors.white,
    ],
    title: "Jeen for Women",
    price: 49.00,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/p2.jpg",
      "assets/images/p1.jpg",
      "assets/images/p3.jpg",
      "assets/images/p4.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white
    ],
    title: "Mobiles",
    price: 36.75,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
      images: [
        "assets/images/tees1.jpg",
        "assets/images/tees2.jpg",
      ],
      colors: [
        colors.red,
        colors.red,
        colors.red,
        colors.white,
      ],
      title: "T-Shirts for women",
      price: 20.00,
      description: description,
      isPopular: true,
      isFavourite: true),
  Product(
      images: [
        "assets/images/ts1.jpeg",
        "assets/images/ts1.jpeg",
        "assets/images/ts1.jpeg",
      ],
      colors: [
        colors.red,
        colors.red,
        colors.red,
        colors.white,
      ],
      title: "T-Shirts",
      price: 20.00,
      description: description,
      isPopular: true,
      isFavourite: true),
];
const String description = " This is a genuine product .\n"
    " This product comes with a lifetime buyback policy provided by the brand ";
