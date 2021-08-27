import 'package:flutter/material.dart';

const labelStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);

class genderCard extends StatelessWidget {
  genderCard({required this.genderName, required this.genderType});
  final String genderName;
  final IconData genderType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderType,
          size: 82,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          genderName,
          style: labelStyle,
        ),
      ],
    );
  }
}
