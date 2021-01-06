import 'package:bmi_test/default.dart';
import 'package:flutter/material.dart';




class IconContent extends StatelessWidget {
  final String gender;
  final IconData icon;

  IconContent({ this.gender,  this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: kIcon_height,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kTextStyle,
        )
      ],
    );
  }
}
