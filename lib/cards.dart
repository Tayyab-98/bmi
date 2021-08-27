import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  cards({required this.colour, this.cardChild});
  final Widget? cardChild;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
