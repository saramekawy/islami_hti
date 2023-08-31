import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/button_sheet_lang.dart';
import 'package:git_test/my_provider.dart';
import 'package:git_test/my_theme.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  static const String routeName = "Settings Tab";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 22),
              child: Text(AppLocalizations.of(context)!.language)),
          InkWell(
            onTap: () {
              showButtomSheetLanguage(context);
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 58, right: 35, top: 22),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(provider.language == 'en' ? "Arabic" : "English"),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 38, top: 22),
              child: Text(AppLocalizations.of(context)!.mode)),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 58, right: 35, top: 22),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyThemeData.primaryColor)),
            child: Text("Light Mode"),
          )
        ],
      ),
    );
  }
}

showButtomSheetLanguage(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return BottomSheetLang();
    },
  );
}