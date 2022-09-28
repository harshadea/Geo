import 'package:flutter/material.dart';
import 'package:geo/Screens/details/details_screen.dart';
import 'package:geo/Screens/forgot_password/forgot_password_screen.dart';
import 'package:geo/Screens/profile/profile_screen.dart';
import 'package:geo/Screens/sign_in/sign_in_screen.dart';
import 'package:geo/Screens/sign_up/sign_up_screen.dart';
import 'package:geo/Screens/splash/splash_screen.dart';
import 'Screens/complete_profile/complete_profile_screen.dart';
import 'Screens/otp/otp_screen.dart';
import 'Screens/home/home_screen.dart';
import 'Screens/cart/cart_screen.dart';
import 'Screens/plants/plantscreen.dart';


final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  PlantScreen.routeName: (context) => const PlantScreen(),
};