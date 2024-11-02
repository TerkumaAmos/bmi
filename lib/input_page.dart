// ignore_for_file: must_be_immutable, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables

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

Color maleCardColour = inactiveCardColour;
Color femaleCardColour = inactiveCardColour;

void updateColour = (int gender) {
  if (gender == 1) {
    if (maleCardColour == inactiveCardColour) {
      maleCardColour = activeCardColour;
    } else {
      maleCardColour = inactiveCardColour;
    }
  }
};

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0x0ffa0e21),
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
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      Colour: inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      Colour: inactiveCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: "FEMALE")),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: ReusableCard(
          //     Colour: activeCardColour,
          //   ),
          // ),
          Expanded(
            child: Row(
              children: const [
                // Expanded(
                //   child: ReusableCard(
                //     Colour: activeCardColour,
                //   ),
                // ),
                // Expanded(
                //   child: ReusableCard(
                //     Colour: activeCardColour,
                //   ),
                // )
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
