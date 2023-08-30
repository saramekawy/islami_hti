import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_test/models/sura_model.dart';
import 'package:git_test/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "Sura Details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
        ),
        body:
            // Column(
            //   children: [
            //     Text(args.name,style: Theme.of(context).textTheme.bodyLarge,),
            //     Divider(endIndent: 30,indent: 30,color: MyThemeData.primaryColor,thickness: 2,)
            //   ],
            // )
            Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Color.fromRGBO(255, 255, 255, 0.5),
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    args.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  )),
              Divider(
                endIndent: 30,
                indent: 30,
                color: MyThemeData.primaryColor,
                thickness: 2,
              ),
              Expanded(
                child: Center(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(
                          verses[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = file.split("\n");

    verses = [];
    for (int i = 0; i < suraLines.length; i++) {
      String line = suraLines[i];
      String modifiedLine = line.trimRight() + " (${1 + i})";
      verses.add(modifiedLine);
    }

    print(suraLines);
    setState(() {});
  }
}
