import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/widgets/custom_stack2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HospitalsScreen extends StatefulWidget {
  const HospitalsScreen({super.key});

  @override
  State<HospitalsScreen> createState() => _HospitalsScreenState();
}

class _HospitalsScreenState extends State<HospitalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      // bottomNavigationBar: CustomNavBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 46.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomPageAddress(
                  icon: Icons.arrow_back, add: "X-Rays Department"),
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 240.w, bottom: 0),
                child: Text(
                  "all hospitals",
                  style: TextStyle(
                    color: const Color(0xFF0165FC),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: "JosefinSans_Italic",
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xFF0165FC),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (_, index) =>  CustomStack2(index:index),
                  itemCount: 7,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
