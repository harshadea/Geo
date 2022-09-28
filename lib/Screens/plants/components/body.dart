import 'package:flutter/material.dart';
import 'package:geo/Screens/plants/components/recoment_plants.dart';
import 'package:geo/Screens/plants/components/title_with_more_btn.dart';

import '../plantscreen.dart';
import 'feature_plants.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMore(title: 'Recommended', press: () {}),
          const RecomendPlants(),
          TitleWithMore(title: 'Future Plants', press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: PlantScreen.DefaultPadding),
        ],
      ),
    );
  }
}
