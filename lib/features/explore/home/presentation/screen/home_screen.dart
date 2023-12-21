import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/widgets/custom_navbar.dart';
import 'package:flutter_grad_project/core/widgets/custom_rawMaterialButton.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/widgets/custom_stack.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      // bottomNavigationBar: const CustomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomRawMaterialButton(
                    icon: Icons.menu,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 182.9,
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0165FC),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFEDA963).withOpacity(.5),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 153.33,
                        height: 46,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3A89FF),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50.0, top: 12),
                          child: Text(
                            "search hospital",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'JosefinSans_Light',
                                color: const Color(0xFFFFFFFF).withOpacity(.7),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        left: 5,
                        child: Container(
                          width: 39.43,
                          height: 39.43,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF).withOpacity(.5),
                              borderRadius: BorderRadius.circular(25)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Color(0xFFFFFFFF),
                                size: 18,
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withOpacity(.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/banner.png",
                    ),
                    const Positioned(
                      top: 35,
                      left: 206,
                      child: SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          color: Color(0xFFFFFFFF),
                          thickness: 1,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 220,
                        top: 40,
                        child: Image.asset(
                          "assets/images/text.png",
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Departments",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            fontFamily: 'JosefinSans_Bold'),
                      ),
                      Image.asset("assets/images/vector.png")
                    ],
                  ),
                  const Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: <Widget>[
                      CustomStack(),
                      CustomStack(),
                      CustomStack(),
                      CustomStack(),
                      CustomStack(),
                      CustomStack(),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
