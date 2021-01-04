import 'package:bmi_test/iconContent.dart';
import 'package:bmi_test/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xff1d1e33);
const inactiveColor = Color(0xff111328);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  String gender = "";

  void updatecolor(int gennder) {
    if (gennder == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
        gender = "male";
      } else {
        gender="";
        maleCardColor = inactiveColor;
      }
    } else if (gennder == 2) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
        gender = "female";
      } else {
        femaleCardColor = inactiveColor;
        gender="";
      }
    } else {
      print("error gender");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculation"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updatecolor(1);
                            print(gender);
                          });
                        },
                        child: ReusableCard(
                          color: maleCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            gender: "MALE",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updatecolor(2);
                            print(gender);
                          });
                        },
                        child: ReusableCard(
                          color: femaleCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            gender: "FEMALE",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ReusableCard(
                  color: activeColor,
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        color: activeColor,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        color: activeColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10),
                height: bottomContainerHeight,
              ),
            ],
          ),
        ));
  }
}
