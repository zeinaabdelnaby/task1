import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2.5;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  AnimationController? _controller;
  Animation<double>? animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));

    animation1 = Tween<double>(begin: 30, end: 20).animate(
        CurvedAnimation(parent: _controller!, curve: Curves.bounceInOut))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller?.forward();

    Timer(const Duration(seconds: 3), () {
      setState(() {
        _fontSize = 1.58;
      });
    });

    Timer(const Duration(seconds: 3), () {
      setState(() {
        _containerSize = 1.3;
        _containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 6), () {
      GoRouter.of(context).pushReplacement(AppRouters.kSigninScreen);
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AnimatedLogoAndName(
          height: height,
          fontSize: _fontSize,
          textOpacity: _textOpacity,
          animation1: animation1,
          containerOpacity: _containerOpacity,
          width: width,
          containerSize: _containerSize),
    );
  }
}

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
