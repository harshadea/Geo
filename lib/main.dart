import 'package:flutter/material.dart';
import 'package:geo/Screens/splash/splash_screen.dart';
import 'package:geo/routs.dart';
import 'package:geo/theme.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geo Mart',
      theme: theme(),
      // home: SplashScreen(),
     initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
