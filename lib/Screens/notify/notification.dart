import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

import '../notify/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colors.grey,
      body: Body(),
    );
  }
}
