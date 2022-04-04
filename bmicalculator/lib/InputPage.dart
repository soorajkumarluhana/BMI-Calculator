import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'Reusable.dart';
import 'constant.dart';

enum Gender {
  male,
  female,
}

int Height = 180;
int Weight = 60;

void updateColour(Gender SelectedGender) {
  if (SelectedGender == Gender.male) {
    if (maleCardColour == inactiveCardColour) {
      maleCardColour = activeCardColour;
      femaleCardColour = inactiveCardColour;
    } else {
      maleCardColour = inactiveCardColour;
    }
  }

  if (SelectedGender == Gender.female) {
    if (SelectedGender == Gender.female) {
      femaleCardColour = activeCardColour;
      maleCardColour = inactiveCardColour;
    } else {
      femaleCardColour = inactiveCardColour;
    }
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: ReUsableCode(
                    Colour: maleCardColour,
                    cardChild: IconContent(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: ReUsableCode(
                    Colour: femaleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReUsableCode(
              Colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: klabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        Height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                      value: Height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          Height = newvalue.round();
                        });
                      })
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReUsableCode(
                  Colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight", 
                        style: klabelTextStyle,
                      ),
                    Text(Weight.toString(),
                    style: kNumberTextStyle,
                    ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,  
                    children: [
                   FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),
                   
                   )   
                    ],
                  )  
                    ],
                  ),
                )),
                Expanded(
                    child: ReUsableCode(
                  Colour: activeCardColour,
                  cardChild: Text("s"),
                )),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
