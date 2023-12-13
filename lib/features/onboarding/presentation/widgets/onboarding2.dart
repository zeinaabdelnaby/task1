import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE9E9E9),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/images/living-room-g63c0690c9_1920 1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 333.0, top: 33),
                  child: Image.asset("assets/images/Ellipse 5.png"),
                ),
                Positioned(
                  top: 240,
                  left: 90,
                  child: SizedBox(
                      height: 270,
                      child: Image.asset("assets/images/circles.png")),
                ),
                Positioned(
                    top: 240,
                    left: 80,
                    child: Image.asset("assets/images/Ellipse 17.png")),
                Positioned(
                    top: 340,
                    left: 90,
                    child: SizedBox(
                        height: 70,
                        child: Image.asset(
                            "assets/images/The best choice for your health.png"))),
              ],
            ),
          ),
        ));
  }
}
