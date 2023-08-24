import 'package:flutter/material.dart';
import 'package:git_test/my_theme.dart';
import 'package:git_test/tabs/ahadeth_tab.dart';
import 'package:git_test/tabs/quran_tab.dart';
import 'package:git_test/tabs/radio_tab.dart';
import 'package:git_test/tabs/sebha_tab.dart';
import 'package:git_test/tabs/settings_tab.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_bg.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio.png"),
                    size: 30,
                  ),
                  label: 'الراديو',
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                    size: 30,
                  ),
                  label: 'التسبيح',
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ahadeth.png"),
                    size: 30,
                  ),
                  label: 'الأحاديث',
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/mushaf.png"),
                    size: 30,
                  ),
                  label: 'القرآن',
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "الإعدادات")
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }
}
