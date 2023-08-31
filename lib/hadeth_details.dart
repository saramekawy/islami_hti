import 'package:flutter/material.dart';
import 'package:git_test/models/hadeth_model.dart';

import 'my_theme.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "Hadeth Details";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

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
            border: Border.all(color: MyThemeData.primaryColor, width: 0.2),
            color: Color.fromRGBO(255, 255, 255, 0.5),
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    args.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  )),
              Divider(
                endIndent: 30,
                indent: 30,
                color: MyThemeData.primaryColor,
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        args.hadethContent[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    );
                  },
                  itemCount: args.hadethContent.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
