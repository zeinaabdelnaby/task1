import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomStack2 extends StatelessWidget {
  const CustomStack2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kinfoHospitalScreen);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        child: Container(
          width: 256,
          height: 225,
          decoration: BoxDecoration(
            color: const Color(0xFFF5EFEF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset("assets/images/hospital2.png",
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "hospital name",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontFamily: 'JosefinSans_Bold'),
                        ),
                        Text(
                          "Lorem \nipsum.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              fontFamily: 'JosefinSans_Light'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const StarRow()
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 45),
                    child: CurtomReadMoreButton(
                      width: 30,
                      height: 30,
                      size: 17.24,
                      color: Color(0xFF0165FC),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
