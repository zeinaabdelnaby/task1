import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_grad_project/core/widgets/custom_subtitle.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/widgets/custom_calender.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

DateTime _currentdate = DateTime.now();


class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 46.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomPageAddress(
                  icon: Icons.arrow_back, add: "Reservation Form"),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 39),
                  CustomSubTitle(
                    text: 'National Id',
                  ),
                   SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      width: 285,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "0987657643233212",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(40, 13, 13, 13),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF2F2F2),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                                width: 1, color: Color.fromARGB(103, 58, 137, 255)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(103, 58, 137, 255))),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 1, color: Color.fromARGB(255, 255, 0, 0))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSubTitle(
                    text: 'Select day',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(child: SizedBox(width: 300, height: 200, child: CustomCalender()))
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomSubTitle(
                    text: 'Select time',
                  ),
                
                  Center(
                    child: Scrollbar(
                      thickness:10,
                      child: SizedBox(
                        width: 300,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (_, index) => Times(),
                          itemCount: 3,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   height: 185,
                  //   child: CupertinoDatePicker(
                  //     mode: CupertinoDatePickerMode.time,
                  //     initialDateTime: _currentdate,
                  //     onDateTimeChanged: (DateTime newDateTime) {
                  //       setState(() {
                  //         _currentdate = newDateTime;
                  //       });
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouters.kbookingDoneScreen);
                    },
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Book now',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Times extends StatelessWidget {
  const Times({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
    
     ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Container(
              height: 50, width: 100, 
              decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Color(0xFFA3A2A2) ),
          ),
          color: Colors.white,
        ),
              child:Center(child: Text("5   :   20     AM",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),)),),
        ));
  }
}
