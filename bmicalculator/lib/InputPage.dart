import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'Reusable.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColour = Color(0xFF111328);

Color maleCardColour = inactiveCardColour;
Color femaleCardColour = inactiveCardColour;

void updateColour(int gender) {
  if (gender == 1) {
    if (maleCardColour == inactiveCardColour) {
      maleCardColour = activeCardColour;
      femaleCardColour = inactiveCardColour;
    } else {
      maleCardColour = inactiveCardColour;
    }
  }

  if (gender == 2) {
    if (femaleCardColour == inactiveCardColour) {
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
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(1);
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
                      updateColour(2);
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
              cardChild: Text("s"),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReUsableCode(
                  Colour: activeCardColour,
                  cardChild: Text("s"),
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
