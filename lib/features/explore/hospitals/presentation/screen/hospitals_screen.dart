import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/widgets/custom_navbar.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/widgets/custom_stack2.dart';

class HospitalsScreen extends StatefulWidget {
  const HospitalsScreen({super.key});

  @override
  State<HospitalsScreen> createState() => _HospitalsScreenState();
}

class _HospitalsScreenState extends State<HospitalsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      bottomNavigationBar: CustomNavBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPageAddress(
                  icon: Icons.arrow_back, add: "X-Rays Department"),
              Padding(
                padding: EdgeInsets.only(left: 200.0, top: 30),
                child: Text(
                  "all hospitals",
                  style: TextStyle(
                    color: Color(0xFF0165FC),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: "JosefinSans_Italic",
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF0165FC),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: <Widget>[
                  CustomStack2(),
                  CustomStack2(),
                  CustomStack2(),
                  CustomStack2(),
                  CustomStack2(),
                  CustomStack2(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
