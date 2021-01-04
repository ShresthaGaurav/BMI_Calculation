import 'package:flutter/material.dart';

const double icon_height = 80;
const TextStyle textStyle = TextStyle(
  fontSize: 18,
  color: Color(0xff8d8e98),
);

class IconContent extends StatelessWidget {
  final String gender;
  final IconData icon;

  IconContent({this.gender, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: icon_height,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: textStyle,
        )
      ],
    );
  }
}
