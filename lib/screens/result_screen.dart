import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lovecalc/common/brain.dart';
import 'package:lovecalc/common/button.dart';

import '../constant.dart';

class ResultScreen extends StatefulWidget {
  final String person1Name;
  final String person2Name;

  const ResultScreen({Key key, this.person1Name, this.person2Name})
      : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int lovePercentage = Random().nextInt(101);
  Brain brain = Brain();
  String loveMessage;

  void updateUI(int lovePercent) {
    setState(() {
      loveMessage = brain.getMessage(lovePercent);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    updateUI(lovePercentage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                kGradientFirstColor,
                kGradientSecondColor,
                kGradientThirdColor
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(widget.person1Name, style: kPersonTextStyle),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  FontAwesomeIcons.heart,
                  size: 25.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(widget.person2Name, style: kPersonTextStyle),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Text(
                    lovePercentage.toString() + "%",
                    style: kLovePercent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    loveMessage,
                    style: kLoveMessage,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Button(
                  buttonText: "Calculate Again",
                  onPress: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )),
      ),
    );
  }
}
