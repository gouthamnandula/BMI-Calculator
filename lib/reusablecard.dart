import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.colour = Colors.blue, required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;

  //to make default changes in the apps

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}