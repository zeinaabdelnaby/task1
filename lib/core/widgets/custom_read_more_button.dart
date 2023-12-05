import 'package:flutter/material.dart';

class CurtomReadMoreButton extends StatelessWidget {
  const CurtomReadMoreButton({super.key, required this.width, required this.height, required this.size});

  final double width;
  final double height;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: () {},
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF0165FC),
      child: Icon(
        Icons.call_made,
        size: size,
        color: const Color(0xFFE9E9E9),
      ),
    );
  }
}
