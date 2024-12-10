import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, this.label = '', this.icon});
  final IconData? icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
         icon,
          size:80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}