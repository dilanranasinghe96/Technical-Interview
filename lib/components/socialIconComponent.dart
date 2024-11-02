import 'package:flutter/material.dart';

class CustomSocialIcon extends StatelessWidget {
  Color color;
  IconData icon;
  CustomSocialIcon({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
