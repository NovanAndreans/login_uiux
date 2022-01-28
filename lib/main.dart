import 'package:flutter/material.dart';
import 'package:login_uiux/views/LoginPage.dart';
import 'package:login_uiux/views/SweetAlert.dart';

void main() {
  runApp(const MyApp());
  String title = "Sweet Alert";
  Color bgColor = Colors.blue;
  Color fgColor = Colors.white;
  IconData icLogo = Icons.star_border;
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwalFire(),
    );
  }
}