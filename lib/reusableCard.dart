import 'package:bmi_test/default.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({ this.color,  this.cardChild,  this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        try {
          onPress();
        } catch(error) {
          print("No Function");
        }
      },
      child: Container(
        height: KHeight,
        width: kWidth,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: cardChild,
      ),
    );
  }
}
