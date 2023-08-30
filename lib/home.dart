import 'package:flutter/material.dart';
import 'package:git_test/tabs/ahadeth_tab.dart';
import 'package:git_test/tabs/quran_tab.dart';
import 'package:git_test/tabs/radio_tab.dart';
import 'package:git_test/tabs/sebha_tab.dart';
import 'package:git_test/tabs/setting_tab.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "إسلامي",
            style: GoogleFonts.elMessiri(
              color: const Color(0xFF242424),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
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
            ]),
        body: tabs[currentIndex],
      ),
    );
  }
}
