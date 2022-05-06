import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'input_Page.dart';
import 'containor_Unit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RoundIcon.dart';
import 'finalPage.dart';
import 'input_Page.dart';

class finalpage extends StatelessWidget {
  finalpage(
      {required this.bmiresult,
      required this.resultText,
      required this.interception});

  final String bmiresult;
  final String resultText;
  final String interception;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          primaryColor: Colors.deepPurple,
        ),
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.cyan[900],
                  title: Text('Your BMI'),
                ),
                body: Container(
                    margin: EdgeInsets.all(9),
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(
                                  'RESULT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 45,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  margin: EdgeInsets.all(30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        resultText,
                                        style: TextStyle(
                                            color: Colors.deepOrange[300],
                                            fontSize: 36,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        bmiresult,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 90,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: Text(
                                          interception,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      color: Color(0xFF1D1E39)),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                        child: Center(
                                          child: Text(
                                            'Re-Calculate',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 45),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(45),
                                          color: Colors.pink,
                                        )),
                                  ),
                                ))
                          ]),
                    )))));
  }
}
