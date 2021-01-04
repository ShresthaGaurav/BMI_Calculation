import 'package:bmi_test/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xfff040526),
        scaffoldBackgroundColor: Color(0xfff0d0e22),
      ),
      home: InputPage(),
    );
  }
}

