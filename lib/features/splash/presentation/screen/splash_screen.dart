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
        _fontSize = 1.4;
      });
    });

    Timer(const Duration(seconds: 3), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 5), () {
      GoRouter.of(context).pushReplacement(AppRouters.khometest);
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
      backgroundColor: const Color(0xffE9E9E9),
      body: Center(
        child: Stack(
          children: [
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
                    'Health Care Connection',
                    style: TextStyle(
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // child: Image.asset('assets/images/file_name.png')
                  child: Image.asset('assets/images/LOGO 1.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

