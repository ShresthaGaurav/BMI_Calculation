import 'package:flutter/material.dart';

import 'default.dart';
class ButtomGester extends StatelessWidget {
  final String text;
  final Function navi;

  ButtomGester({@required this.text, @required this.navi});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navi();
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: kBTextStyle,
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
      ),
    );
  }
}
