import 'package:bmi_test/result_page.dart';
import 'package:bmi_test/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_test/default.dart';
import 'package:bmi_test/iconContent.dart';
import 'package:bmi_test/reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum gen {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kInactiveColor;
  gen selectedGender;
  int height = 180;
  int weight = 40;
  int age = 10;

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
                    child: ReusableCard(
                      color: selectedGender == gen.Male
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        gender: "MALE",
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = gen.Male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      color: selectedGender == gen.Female
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        gender: "FEMALE",
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = gen.Female;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kTextStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: kBTextStyle,
                        ),
                        Text('cm', style: kTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData().copyWith(
                        trackHeight: 2,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 28.0),
                        overlayColor: kInactiveColor,
                        thumbColor: kBottomContainerColor,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220.0,
                        min: 120,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
                color: kActiveColor,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      color: kActiveColor,
                      cardChild: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: kTextStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  ' $weight',
                                  style: kBTextStyle,
                                ),
                                Text(
                                  ' Kg',
                                  style: kTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RoundIconButton(
                                    iconData: FontAwesomeIcons.plusCircle,
                                    work: () {
                                      setState(() {
                                        weight > 100 ? weight = 10 : weight++;
                                      });
                                    }),
                                RoundIconButton(
                                    iconData: FontAwesomeIcons.minusCircle,
                                    work: () {
                                      setState(() {
                                        setState(() {
                                          weight <= 10 ? weight = 10 : weight--;
                                        });
                                      });
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      color: kActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: kTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: kBTextStyle,
                              ),
                              Text(
                                "  Year",
                                style: kTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundIconButton(
                                  iconData: FontAwesomeIcons.plusCircle,
                                  work: () {
                                    setState(() {
                                      age > 100 ? age = 10 : age++;
                                    });
                                  }),
                              RoundIconButton(
                                  iconData: FontAwesomeIcons.minusCircle,
                                  work: () {
                                    setState(() {
                                      setState(() {
                                        age <= 10 ? age = 10 : age--;
                                      });
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("hello");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(),
                    ));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Calculate",
                  textAlign: TextAlign.center,
                  style: kBTextStyle,
                ),
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10),
                height: kBottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
