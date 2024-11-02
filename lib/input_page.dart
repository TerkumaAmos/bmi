import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(int gender) {
    setState(() {
      if (gender == 1) {
        maleCardColour = (maleCardColour == inactiveCardColour)
            ? activeCardColour
            : inactiveCardColour;
        femaleCardColour = inactiveCardColour;
      } else if (gender == 2) {
        femaleCardColour = (femaleCardColour == inactiveCardColour)
            ? activeCardColour
            : inactiveCardColour;
        maleCardColour = inactiveCardColour;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColour(1);
                    },
                    child: ReusableCard(
                      Colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColour(2);
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(2);
                        });
                      },
                      child: ReusableCard(
                        Colour: femaleCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
