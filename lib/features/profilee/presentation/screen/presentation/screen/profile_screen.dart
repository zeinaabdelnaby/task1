import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_inquiry_appbar.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/appbar.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/button.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/custom_profile_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgscaffold,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(55), child: appbar()),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: w,
                height: h / 3.1,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20)),
                child: custom_container_profile(),
              ),
              SizedBox(
                height: 40.h,
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
                          fontSize: 20,
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
                    button()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
