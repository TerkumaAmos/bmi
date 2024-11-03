// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  //Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  // void updateColour(Gender selectedGender) {
  //   setState(() {
  //     if (selectedGender == Gender.male) {
  //       maleCardColour = (maleCardColour == inactiveCardColour)
  //           ? activeCardColour
  //           : inactiveCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     } else if (selectedGender == Gender.female) {
  //       femaleCardColour = (femaleCardColour == inactiveCardColour)
  //           ? activeCardColour
  //           : inactiveCardColour;
  //       maleCardColour = inactiveCardColour;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
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
                      setState(
                        () {
                          selectedGender = Gender.male;
                        },
                      );
                    },
                    child: ReusableCard(
                      Colour: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedGender = Gender.female;
                        },
                      );
                    },
                    child: ReusableCard(
                      Colour: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              Colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(value: value, onChanged: onChanged)
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [],
            ),
          ),
          Container(
            color: kBottomContainerColour,
            margin: const EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
