import 'package:flutter/material.dart';
import 'package:lovecalc/common/button.dart';
import 'package:lovecalc/screens/result_screen.dart';

import '../constant.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController person1controller = TextEditingController();
  TextEditingController person2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              kGradientFirstColor,
              kGradientSecondColor,
              kGradientThirdColor
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "Person 1",
                    style: kPersonTextStyle,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(40.0)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                  child: TextField(
                    controller: person1controller,
                    style: kTextFieldInputStyle,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        FontAwesomeIcons.male,
                        color: kIconTextFieldColor,
                        size: 30.0,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    "loves",
                    style: kLoves,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Person 2",
                    style: kPersonTextStyle,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(40.0)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                  child: TextField(
                    controller: person2controller,
                    style: kTextFieldInputStyle,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        FontAwesomeIcons.female,
                        color: kIconTextFieldColor,
                        size: 30.0,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Button(
                    buttonText: 'Calculate',
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResultScreen(
                            person1Name: person1controller.text,
                            person2Name: person2controller.text);
                      }));
                    })
              ],
            ),
          )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
