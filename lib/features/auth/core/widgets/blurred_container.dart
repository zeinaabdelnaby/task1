
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurredContainer extends StatelessWidget {
  final Widget child;

   const BlurredContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0.h).copyWith(top: 180.spMax),
      child: Container(
       width: 370.w, 
        height: 500.h,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: const Color.fromARGB(255, 205, 205, 205), width: 0.5)
       ),
        child: Stack(children: [
         
          ClipRRect(
          

          borderRadius: BorderRadius.circular(30.0), 
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 25.0), 
            child: Container(
              color: Colors.transparent,
              child: child,
            ),
          ),
        ),
        ],)
      ),
    );
  }
}