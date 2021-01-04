import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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

class ReusableCard extends StatelessWidget {
  final Color color;

  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
