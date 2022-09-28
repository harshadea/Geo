import 'package:flutter/material.dart';
import 'package:geo/Screens/plants/plantscreen.dart';
import 'package:geo/colors.dart';


class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: PlantScreen.DefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: PlantScreen.DefaultPadding,
              right: PlantScreen.DefaultPadding,
              bottom: 36+PlantScreen.DefaultPadding,),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: PlantScreen.PrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text('Hi Geo Mates',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: colors.white,
                      fontWeight: FontWeight.bold),
                ),
                // Image.asset('assets/Geo_mart.png'),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                  horizontal: PlantScreen.DefaultPadding),
              padding: const EdgeInsets.symmetric(
                  horizontal: PlantScreen.DefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: PlantScreen.PrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search Plant...",
                        hintStyle: TextStyle(
                          color: PlantScreen.PrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                const Icon(Icons.search,color: PlantScreen.PrimaryColor,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
