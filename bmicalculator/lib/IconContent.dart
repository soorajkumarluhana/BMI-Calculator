import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;
   IconContent({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon( icon,
        size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0XFF8D8E98),
          ),
        )
      ],
    );
  }
}