// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class CurtomReadMoreButton extends StatelessWidget {
  const CurtomReadMoreButton(
      {super.key,
      required this.width,
      required this.height,
      required this.size,
      required this.color});

  final double width;
  final double height;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        Icons.call_made,
        size: size,
        color: const Color(0xFFE9E9E9),
      ),
      onPressed: () {},
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
      shape: const CircleBorder(),
      fillColor: color,
    );
  }
}
