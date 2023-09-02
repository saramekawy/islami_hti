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
      color: provider.themeMode == ThemeMode.light
          ? Color(0xFFf1f0f0)
          : Color(0xFF182039),
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
                Text(AppLocalizations.of(context)!.arabic,
                    style: provider.language == 'ar'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: MyThemeData.primaryColor)
                        : Theme.of(context).textTheme.bodyMedium),
                Icon(
                  Icons.done,
                  color: provider.language != 'en'
                      ? Colors.green
                      : Theme.of(context).shadowColor,
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
                Text(AppLocalizations.of(context)!.english,
                    style: provider.language == 'en'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: MyThemeData.primaryColor)
                        : Theme.of(context).textTheme.bodyMedium),
                Icon(
                  Icons.done,
                  color: provider.language == 'en'
                      ? Colors.green
                      : Theme.of(context).shadowColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
