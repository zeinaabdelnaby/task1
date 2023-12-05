
import 'package:flutter/material.dart';

class AnimatedLogoAndName extends StatelessWidget {
  const AnimatedLogoAndName({
    super.key,
    required this.height,
    required double fontSize,
    required double textOpacity,
    required this.animation1,
    required double containerOpacity,
    required this.width,
    required double containerSize,
  })  : _fontSize = fontSize,
        _textOpacity = textOpacity,
        _containerOpacity = containerOpacity,
        _containerSize = containerSize;

  final double height;
  final double _fontSize;
  final double _textOpacity;
  final Animation<double>? animation1;
  final double _containerOpacity;
  final double width;
  final double _containerSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/Splash 1.png', 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              AnimatedContainer(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: height / _fontSize),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 3000),
                opacity: _textOpacity,
                child: Text(
                  'Health Care',
                  style: TextStyle(
                    fontFamily: 'monoton',
                    color: const Color(0xff0165FC),
                    fontWeight: FontWeight.bold,
                    fontSize: animation1!.value,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 3000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: _containerOpacity,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 3000),
                curve: Curves.fastLinearToSlowEaseIn,
                height: width / _containerSize,
                width: width / _containerSize,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                // child: Image.asset('assets/images/file_name.png')
                child: Image.asset('assets/images/LOGO 1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
