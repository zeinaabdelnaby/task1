import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingDoneScreen extends StatelessWidget {
  const BookingDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomPageAddress(icon: Icons.arrow_back, add: ""),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/small_circles.png",
                    width: 374.62,
                    height: 392.81,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        Image.asset(
                          "assets/images/mark.png",
                          width: 221,
                          height: 221,
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        Image.asset(
                          "assets/images/donate_done.png",
                          width: 242,
                          height: 42,
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        SizedBox(
                          height: 48,
                          width: 332,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    const Color(0xFF000000)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        side: const BorderSide(
                                            color: Color(0xFF0165FC),
                                            width: 2)))),
                            child: const Text(
                              "1234567890432",
                              style: TextStyle(
                                  fontFamily: "JosefinSans_SemiBold",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
