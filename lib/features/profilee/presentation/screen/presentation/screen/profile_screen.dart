import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgscaffold,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 30, right: w / 1.5),
        child: Container(
          width: 32,
          alignment: Alignment.center,
          height: 32,
          decoration: BoxDecoration(
              color: AppColors.floating.withOpacity(.4),
              borderRadius: BorderRadius.circular(4)),
          child: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.capital_text,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: w,
            height: h / 2.4,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage("assets/images/Mask group.png")),

                const Text(
                  "@cassiejo",
                  style: TextStyle(
                    color: AppColors.profile_name,
                    fontFamily: "JosefinSans_Bold",
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
                const Text("Cassie Jones",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "JosefinSans_Bold",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    )),
                const Text(
                  "patient | Joined Jan 2023",
                  style: TextStyle(
                    color: AppColors.capital_text,
                    fontFamily: "JosefinSans_Bold",
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 81,
                          width: 103,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(colors: [
                                Color(0xff4892FF),
                                Color(0xff3A89FF)
                              ])),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Container(
                                    width: 73,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffEBDED1)),
                                    child: const Text("")),
                              ),
                            ],
                          )),
                      Container(
                          height: 81,
                          width: 103,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(colors: [
                                Color(0xff4892FF),
                                Color(0xff3A89FF)
                              ])),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Container(
                                    width: 73,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffEBDED1)),
                                    child: const Text("")),
                              ),
                            ],
                          )),
                      Container(
                          height: 81,
                          width: 103,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(colors: [
                                Color(0xff4892FF),
                                Color(0xff3A89FF)
                              ])),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Container(
                                    width: 73,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffEBDED1)),
                                    child: const Text("")),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),

                // ),
                // Text("@cassiejo"),
                // Text("Cassie Jones"),
                // Text("patient |Joined Jan 2023"),
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Container(
                //           height: 81,
                //           width: 103,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(15),
                //               gradient: LinearGradient(colors: [
                //                 Color(0xff4892FF),
                //                 Color(0xff3A89FF)
                //               ])),
                //           child: Column(
                //             children: [
                //               Padding(
                //                 padding: const EdgeInsets.only(top: 45),
                //                 child: Container(
                //                     width: 73,
                //                     height: 27,
                //                     decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(50),
                //                         color: Color(0xffEBDED1)),
                //                     child: Text("")),
                //               ),
                //             ],
                //           )),
                //       Container(
                //           height: 81,
                //           width: 103,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(15),
                //               gradient: LinearGradient(colors: [
                //                 Color(0xff4892FF),
                //                 Color(0xff3A89FF)
                //               ])),
                //           child: Column(
                //             children: [
                //               Padding(
                //                 padding: const EdgeInsets.only(top: 45),
                //                 child: Container(
                //                     width: 73,
                //                     height: 27,
                //                     decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(50),
                //                         color: Color(0xffEBDED1)),
                //                     child: Text("")),
                //               ),
                //             ],
                //           )),
                //       Container(
                //           height: 81,
                //           width: 103,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(15),
                //               gradient: LinearGradient(colors: [
                //                 Color(0xff4892FF),
                //                 Color(0xff3A89FF)
                //               ])),
                //           child: Column(
                //             children: [
                //               Padding(
                //                 padding: const EdgeInsets.only(top: 45),
                //                 child: Container(
                //                     width: 73,
                //                     height: 27,
                //                     decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(50),
                //                         color: Color(0xffEBDED1)),
                //                     child: Text("")),
                //               ),
                //             ],
                //           )),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Container(
            height: h / 1.92,
            width: w,
            decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    "Account Information",
                    style: TextStyle(
                      color: AppColors.capital_text,
                      fontFamily: "JosefinSans_Bold",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email_outlined, color: Color(0xff0362F2),
                          // size: 17,
                        )),
                    const Text("Email",
                        style: TextStyle(
                          color: AppColors.capital_text,
                          fontFamily: "JosefinSans_Bold",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        )),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.penToSquare,
                          color: Color(0xff0362F2),
                          size: 17,
                        )),
                    GradientText(
                      'cassie.jones@gmail.com',
                      style: const TextStyle(
                        fontFamily: "JosefinSans_Bold",
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.local_phone_outlined,
                          color: Color(0xff0362F2),
                          size: 20,
                        )),
                    const Text("Phone",
                        style: TextStyle(
                          color: AppColors.capital_text,
                          fontFamily: "JosefinSans_Bold",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )),
                    const SizedBox(
                      width: 100,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.penToSquare,
                          color: Color(0xff0362F2),
                          size: 17,
                        )),
                    GradientText(
                      '+20 123 456 789',
                      style: const TextStyle(
                        fontFamily: "JosefinSans_Bold",
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.creditCard,
                          color: Color(0xff0362F2),
                          size: 20,
                        )),
                    const Text("Payment",
                        style: TextStyle(
                          color: AppColors.capital_text,
                          fontFamily: "JosefinSans_Bold",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )),
                    const SizedBox(
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/profile3.png",
                        width: 35,
                        height: 30,
                      ),
                    ),
                    Image.asset(
                      "assets/images/profile2.png",
                      width: 35,
                      height: 30,
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.listCheck,
                          color: Color(0xff0362F2),
                          size: 20,
                        )),
                    const Text(
                      "Wishlist",
                      style: TextStyle(
                        color: AppColors.capital_text,
                        fontFamily: "JosefinSans_Bold",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.penToSquare,
                          color: Color(0xff0362F2),
                          size: 17,
                        )),
                    GradientText(
                      'Go to your wishlist',
                      style: const TextStyle(
                        fontFamily: "JosefinSans_Bold",
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff0362F2),
                          size: 20,
                        )),
                    const Text("Location",
                        style: TextStyle(
                          color: AppColors.capital_text,
                          fontFamily: "JosefinSans_Bold",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )),
                    const SizedBox(
                      width: 60,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.penToSquare,
                          color: Color(0xff0362F2),
                          size: 17,
                        )),
                    GradientText(
                      'Egypt, El Mahala Kubra.',
                      style: const TextStyle(
                        fontFamily: "JosefinSans_Bold",
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.calendarDays,
                          color: Color(0xff0362F2),
                          size: 20,
                        )),
                    const Text("Joined",
                        style: TextStyle(
                          color: AppColors.capital_text,
                          fontFamily: "JosefinSans_Bold",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )),
                    const SizedBox(
                      width: 150,
                    ),
                    GradientText(
                      '26 jan 2023',
                      style: const TextStyle(
                        fontFamily: "JosefinSans_Bold",
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 30, right: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: const Color(0xff1f78ff),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.logout,
                            color: AppColors.white,
                          ),
                        ),
                        const Text(
                          'Log out',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
