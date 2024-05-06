import 'package:flutter/material.dart';
import 'package:fresho_login/pages/welcome_pages.dart';
import 'package:fresho_login/shared/shared.dart';

void main() {
  runApp(Fresho());
}

class Fresho extends StatelessWidget {
  const Fresho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent
      ),
      home: WelcomePage(),
    );
  }
}