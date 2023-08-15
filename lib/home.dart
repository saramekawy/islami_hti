import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "Home";

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Islami'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
