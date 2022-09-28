import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/customer-support.png", "text": "Services"},
      {"icon": "assets/images/conversation.png", "text": "Enquiry"},
      {"icon": "assets/images/shop.png", "text": "Store"},
      {"icon": "assets/images/suitcase.png", "text": "Job"},
      {"icon": "assets/images/news.png", "text": "News"},
      {"icon": "assets/images/maintenance.png", "text": "Service"},
      {"icon": "assets/images/healthy-eating.png", "text": "Eats"},
      {"icon": "assets/images/more.png", "text": "More"},
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.deepPurple, Colors.purple]),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: .5,
            crossAxisSpacing: 15,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            );
          },
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image.asset(
                  icon,
                  // color: colors.green,
                  // theme: const SvgTheme(
                  //     currentColor: colors.black, fontSize: 14.0, xHeight: 7.0),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 13,
                  color: colors.white,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
