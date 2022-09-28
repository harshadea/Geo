import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final Widget icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        onPressed: press,
        child: Row(
          children: [
            IconButton(
              onPressed: press,
              icon: icon,
              color: colors.whiteTemp,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: colors.whiteTemp),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: colors.whiteTemp,
            ),
          ],
        ),
      ),
    );
  }
}
