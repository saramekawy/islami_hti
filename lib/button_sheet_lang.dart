import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/my_theme.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class BottomSheetLang extends StatelessWidget {
  const BottomSheetLang({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.lightMode,
                    style: provider.language == 'ar'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: MyThemeData.primaryColor)
                        : Theme.of(context).textTheme.bodyMedium),
                Icon(
                  Icons.done,
                  color:
                      provider.language == 'ar' ? Colors.green : Colors.black,
                ),
              ],
            ),
          ),
          const Divider(
            indent: 50,
            endIndent: 50,
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.darkMode,
                    style: provider.language == 'en'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: MyThemeData.primaryColor)
                        : Theme.of(context).textTheme.bodyMedium),
                Icon(
                  Icons.done,
                  color:
                      provider.language == 'en' ? Colors.green : Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
