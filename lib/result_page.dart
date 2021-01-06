import 'package:bmi_test/bottom_ges.dart';
import 'package:bmi_test/default.dart';
import 'package:bmi_test/reusableCard.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmitext;
  final String bmiinterpretation;
  final String gender;
  final String age;

  ResultPage(
      {@required this.bmiResult,
      @required this.bmitext,
      @required this.bmiinterpretation,
      this.gender,
      this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      gender,
                      style: kBTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      age,
                      style: kBTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        bmitext,
                        style: kBTextStyle.copyWith(color: Colors.greenAccent),
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: kBTextStyle.copyWith(
                          color: Colors.greenAccent, fontSize: 100),
                    ),
                    Text(
                      bmiinterpretation,
                      style: kBTextStyle.copyWith(fontSize: 25),
                    ),
                    ButtomGester(
                        text: "Recalculate",
                        navi: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InputPage(),
                              ));
                        })
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
