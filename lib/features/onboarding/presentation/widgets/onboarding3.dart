import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE9E9E9),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/kevin-bhagat-zNRITe8NPqY-unsplash 1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.infinity,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 333.0, top: 33),
                child: Image.asset("assets/images/Ellipse 5.png"),
              ),
              Column(
                children: [
                  Image.asset("assets/images/text group (1).png"),
                  Image.asset("assets/images/Icons.png"),
                ],
              ),
            ]),
          ),
        ));
  }
}
