// ignore_for_file: must_be_immutable, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

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
                  child: ReusableCard(
                    Colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E9E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   child: ReusableCard(
                //     Colour: activeCardColour,
                //   ),
                // ),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.Colour, required this.cardChild});

  final Color Colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colour,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
