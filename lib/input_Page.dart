import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'containor_Unit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RoundIcon.dart';
import 'finalPage.dart';
import 'Calculation.dart';

const Activecolor = Colors.greenAccent;
const Inactivecolor = Colors.white;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int Height = 180;
  int WEIGHT = 55;
  int AGE = 21;
  Color maleColor = Inactivecolor;
  Color FemaleColor = Inactivecolor;
  void changeColor(int x) {
    if (x == 1) {
      if (maleColor == Inactivecolor) {
        maleColor = Activecolor;
      } else {
        maleColor = Inactivecolor;
      }
      FemaleColor = Inactivecolor;
    }
    if (x == 2) {
      if (FemaleColor == Inactivecolor) {
        FemaleColor = Activecolor;
      } else {
        FemaleColor = Inactivecolor;
      }
      maleColor = Inactivecolor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          primaryColor: Colors.deepPurple,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Body Mass Index',
                // style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              backgroundColor: Colors.cyan[900],
            ),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(9),
                child: Column(children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                changeColor(1);
                                print('hello');
                              });
                            },
                            child: containor_Unit(
                              cardChild: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.male,
                                    size: 81,
                                    color: maleColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                changeColor(2);
                              });
                            },
                            child: containor_Unit(
                              cardChild: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.female,
                                    size: 81,
                                    color: FemaleColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: containor_Unit(
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'HEIGHT',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        Height.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 50,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        'Cm',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                Slider(
                                    value: Height.toDouble(),
                                    min: 120,
                                    max: 250,
                                    activeColor: Colors.pink,
                                    inactiveColor: Colors.white54,
                                    onChanged: (onChanged) {
                                      setState(() {
                                        Height = onChanged.round();
                                      });
                                    })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: containor_Unit(
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  WEIGHT.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RawMaterialButton(
                                      shape: CircleBorder(),
                                      fillColor: Colors.blueGrey,
                                      elevation: 6,
                                      constraints: BoxConstraints.tightFor(
                                          height: 45, width: 45),
                                      onPressed: () {
                                        setState(() {
                                          WEIGHT > 0 ? WEIGHT-- : WEIGHT = 55;
                                          ;
                                        });
                                      },
                                      child: Icon(FontAwesomeIcons.minus),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    RawMaterialButton(
                                      shape: CircleBorder(),
                                      fillColor: Colors.blueGrey,
                                      elevation: 6,
                                      constraints: BoxConstraints.tightFor(
                                          height: 45, width: 45),
                                      onPressed: () {
                                        setState(() {
                                          WEIGHT > 0 ? WEIGHT++ : WEIGHT = 55;
                                        });
                                      },
                                      child: Icon(FontAwesomeIcons.plus),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: containor_Unit(
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  AGE.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RawMaterialButton(
                                      shape: CircleBorder(),
                                      fillColor: Colors.blueGrey,
                                      elevation: 6,
                                      constraints: BoxConstraints.tightFor(
                                          height: 45, width: 45),
                                      onPressed: () {
                                        setState(() {
                                          AGE > 1 ? AGE-- : AGE = 21;
                                        });
                                      },
                                      child: Icon(FontAwesomeIcons.minus),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    RawMaterialButton(
                                      shape: CircleBorder(),
                                      fillColor: Colors.blueGrey,
                                      elevation: 6,
                                      constraints: BoxConstraints.tightFor(
                                          height: 45, width: 45),
                                      onPressed: () {
                                        setState(() {
                                          AGE++;
                                        });
                                      },
                                      child: Icon(FontAwesomeIcons.plus),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          calculation cal =
                              calculation(height: Height, weight: WEIGHT);

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return finalpage(
                                bmiresult: cal.CalculateBmi(),
                                resultText: cal.Result(),
                                interception: cal.Interpritation());
                          }));
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Calculate',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 45),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.pink,
                          ),
                          height: 20,
                          width: double.infinity,
                        ),
                      ))
                ]),

                // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
              ),
            )));
  }
}
