// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE9E9E9),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 30),
              child:
                  Stack(alignment: AlignmentDirectional.topCenter, children: [
                Positioned(
                  top: 100,
                  left: 60,
                  child: SizedBox(
                      height: 550,
                      child: Image.asset("assets/images/design.png")),
                ),
                Positioned(
                    right: 170,
                    top: 20,
                    child: SizedBox(
                        height: 110,
                        width: 210,
                        child: Image.asset("assets/images/text group.png"))),
              ]),
            ),
          ),
        ));
  }
}
