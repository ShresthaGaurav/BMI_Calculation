import 'package:flutter/material.dart';

import 'default.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function work;

  RoundIconButton({this.iconData, this.work});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: work,
      child: Container(
        color: kInactiveColor,
        child: Icon(
          iconData,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
