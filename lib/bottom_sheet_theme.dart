import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/my_theme.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class BottomSheeTheme extends StatelessWidget {
  const BottomSheeTheme({super.key});

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
              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.lightMode,
                  style: provider.themeMode == ThemeMode.light
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: MyThemeData.primaryColor)
                      : Theme.of(context).textTheme.bodyMedium,
                )
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
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.darkMode,
                  style: provider.themeMode != ThemeMode.light
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: MyThemeData.primaryColor)
                      : Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
