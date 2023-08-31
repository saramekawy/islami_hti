import 'package:flutter/material.dart';
import 'package:git_test/my_provider.dart';
import 'package:git_test/my_theme.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "Sebha Tab";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    int counter = 30;
    String zekr = "سبحان الله";
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Stack(alignment: Alignment.topCenter, children: [
            Container(
              margin: EdgeInsets.only(
                top: 82,
              ),
              child: Image.asset("assets/images/sebha_icon.png"),
            ),
            Container(
                margin: EdgeInsets.only(left: 65),
                child: Image.asset("assets/images/head_of_sebha.png")),
          ]),
        ),
        Center(
          child: Text(
            ("${provider.zekrContent}"),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyThemeData.primaryColor),
              ),
              Text(
                "${provider.counter}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4, // Set the desired elevation
                backgroundColor:
                    Theme.of(context).primaryColor, // Set the background color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30), // Set the border radius
                ),
              ),
              onPressed: () {
                provider.updateCounter();
                print(provider.counter);
                setState(() {});
                print(provider.value);
              },
              child: Text(
                "${provider.zekrContent}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.bottomRight,
            child: IconButton(
              color: MyThemeData.blackColor,
              onPressed: () {
                provider.restart();
                setState(() {});
              },
              icon: Icon(
                Icons.restart_alt_outlined,
                size: 30,
              ),
            ))
      ],
    );
  }
}
