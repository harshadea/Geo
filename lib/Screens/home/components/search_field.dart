import 'package:flutter/material.dart';
import 'package:geo/colors.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        // height:50,
        decoration: BoxDecoration(
          color: SecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          onChanged: (value) {
            // Search value
          },
          decoration: const InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Product...",
            prefixIcon: Icon(Icons.search),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 20, vertical: 9),
          ),
        ),
      ),
    );
  }
}
