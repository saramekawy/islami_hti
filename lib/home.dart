import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/my_provider.dart';
import 'package:git_test/tabs/ahadeth_tab.dart';
import 'package:git_test/tabs/quran_tab.dart';
import 'package:git_test/tabs/radio_tab.dart';
import 'package:git_test/tabs/sebha_tab.dart';
import 'package:git_test/tabs/setting_tab.dart';
import 'package:provider/provider.dart';

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
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
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
                backgroundColor: Color(0xFF141A2E),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha.png"),
                  size: 30,
                ),
                label: 'التسبيح',
                backgroundColor: Color(0xFF141A2E),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ahadeth.png"),
                  size: 30,
                ),
                label: 'الأحاديث',
                backgroundColor: Color(0xFF141A2E),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/mushaf.png"),
                  size: 30,
                ),
                label: 'القرآن',
                backgroundColor: Color(0xFF141A2E),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "الإعدادات")
            ]),
        body: tabs[currentIndex],
      ),
    );
  }
}
