import 'package:flutter/material.dart';
const double height=200;
const double width=170;
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: cardChild,
    );
  }
}
