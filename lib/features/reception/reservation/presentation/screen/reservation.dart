import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_grad_project/core/widgets/custom_subtitle.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/widgets/custom_calender.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 33),
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
                  TextField(
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
                    height: 11,
                  ),
                  SizedBox(width: 300, height: 200, child: CustomCalender())
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
                  const SizedBox(
                    height: 11,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 185,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: _currentdate,
                      onDateTimeChanged: (DateTime newDateTime) {
                        setState(() {
                          _currentdate = newDateTime;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
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
