import 'package:bmicalculator/bmi_calculator.dart';
import 'package:bmicalculator/frame_border.dart';
import 'package:bmicalculator/result.dart';
import 'package:bmicalculator/roundiconbutton.dart';
import 'package:flutter/cupertino.dart';
import 'icon_contant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

const Color activecolor = Color(0xff1d1e33);
const Color inactivecolor = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: FrameBorder(
                  onPress: () {
                      setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  color: selectedgender == Gender.male
                      ? activecolor
                      : inactivecolor,
                  childWidget:
                      IconContent(icon: FontAwesomeIcons.mars, lable: "Male"),
                )),
                Expanded(
                    child: FrameBorder(
                  onPress: () {
                      setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  color: selectedgender == Gender.female
                      ? activecolor
                      : inactivecolor,
                  childWidget: IconContent(
                      icon: FontAwesomeIcons.venus, lable: "Female"),
                )),
              ],
            ),
          ),
          Expanded(
            child: FrameBorder(
              color: activecolor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: Color(0xff8d8e98)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("cm",
                          style: TextStyle(
                              fontSize: 18, color: Color(0xff8d8e98))),
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTickMarkColor: Color(0xff8d8e98),
                        inactiveTickMarkColor: Colors.white,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220,
                        min: 120,
                        onChanged: (double newvlaue) {
                          setState(() {
                            height = newvlaue.round();
                          });
                        },
                      )),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: FrameBorder(
                onPress: () {},
                color: activecolor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Color(0xff8d8e98))),
                    Text(weight.toString(),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                            icon: FontAwesomeIcons.plus, onPress: () {
                              setState(() {
                                weight++;
                              });
                        }),
                        RoundIconButton(
                            icon: FontAwesomeIcons.minus, onPress: () {
                              setState(() {
                                weight--;
                              });
                        }),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: FrameBorder(
                    onPress: () {},
                    color: activecolor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Color(0xff8d8e98))),
                        Text(age.toString(),
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus, onPress: () {
                                  setState(() {
                                    age++;
                                  });
                            }),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus, onPress: () {
                                 setState(() {
                                   age--;
                                 });
                            }),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              )),
            ],
          )),
          GestureDetector(
            onTap: () {
              Calculator c = new Calculator(
                height,
                weight,
              );
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Result(c.Calbmi(), c.GetResult());
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffeb1555),
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(bottom: 10),
              height: 50,
              child: Center(
                  child: Text(
                "CALCULATOR",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
