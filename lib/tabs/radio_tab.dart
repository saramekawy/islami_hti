import 'package:flutter/material.dart';
import 'package:git_test/my_theme.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = "Radio Tab";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Image.asset("assets/images/radio_icon.png"),
        ),
        Center(
          child: Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fast_rewind,
                  color: MyThemeData.primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.stop,
                  size: 35,
                  color: MyThemeData.primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fast_forward,
                  color: MyThemeData.primaryColor,
                )),
          ],
        )
      ],
    );
  }
}
