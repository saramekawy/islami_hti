import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_test/hadeth_details.dart';
import 'package:git_test/my_theme.dart';

import '../models/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Center(
          child: Image.asset("assets/images/hadeth_icon.png"),
        ),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: ahadethData[index]);
                      },
                      child: Center(
                          child: Text(
                        ahadethData[index].name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )));
                },
                itemCount: ahadethData.length))
      ],
    );
  }

  void loadHadeth() async {
    String file = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> ahadeth = file.split('#');
    // List <String > hadethLines = ahadeth[index].split("\n");
    // String hadethTitle = hadethLines[0];
    // hadethLines.removeAt(0);
    // List <String> hadethContent = hadethLines;

    for (int i = 0; i < ahadeth.length; i++) {
      List<String> hadethLines = ahadeth[i].trim().split("\n");
      String hadethTitle = hadethLines[0];
      print(hadethTitle);

      hadethLines.removeAt(0);
      List<String> hadethContent = hadethLines;
      ahadethData.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {});
  }
}
