import 'package:bmi_test/default.dart';
import 'package:bmi_test/result_page.dart';
import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        "Calculate",
        textAlign: TextAlign.center,
        style: kBTextStyle.copyWith(color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ResultPage(),));
      },
    );
  }
}
