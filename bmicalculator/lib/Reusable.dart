import 'package:flutter/material.dart';

class ReUsableCode extends StatelessWidget {
  final Color Colour;
  final Widget cardChild;

  ReUsableCode({Key? key, required this.Colour, required this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
