import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/models/product.dart';
import 'package:geo/colors.dart';


class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product, required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: colors.black),
            // style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 50),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: const [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      color: PrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 12,color: PrimaryColor,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}