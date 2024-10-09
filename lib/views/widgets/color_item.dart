import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 24,
            backgroundColor: color,
          );
  }
}
