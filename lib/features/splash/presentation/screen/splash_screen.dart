import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/database/cache_helper.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/features/splash/presentation/widget/animated_logo_&_name.dart';
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

  bool isVisited = CacheHelper().getData(key: 'isVisited') ?? false;

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
      if (isVisited == true) {
        GoRouter.of(context).pushReplacement(AppRouters.kSigninScreen);
      } else {
        GoRouter.of(context).pushReplacement(AppRouters.konboarding);
      }
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
