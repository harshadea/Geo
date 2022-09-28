import 'package:flutter/material.dart';
import 'package:geo/Screens/home/components/models/product.dart';
import 'package:geo/colors.dart';


class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImages = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImages]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) => buildSmallPreview(index),)
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview( int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImages = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(10),
          border:Border.all(color: selectedImages == index ? PrimaryColor:
          Colors.transparent
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
