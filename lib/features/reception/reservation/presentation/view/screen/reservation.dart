import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_grad_project/core/widgets/custom_subtitle.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view_model/hospital_cubit.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view/widgets/custom_calender.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view_model/reservation_cubit.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view_model/reservation_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen(
      {super.key, required this.depId, required this.hospId});
  final String depId, hospId;

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

DateTime _currentdate = DateTime.now();
TextEditingController nadIdController = TextEditingController();

class _ReservationScreenState extends State<ReservationScreen> {
  void initState() {
    super.initState();
  }

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReservationCubit, ReservationState>(
        listener: (context, state) {
      if (state is ReservationLoading) {
        isLoading = true;
      } else if (state is ReservationSuccess) {
        isLoading = false;
      }
    }, builder: (BuildContext context, state) {
      var cubit = context.read<ReservationCubit>();
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 39),
                    const CustomSubTitle(
                      text: 'National Id',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        width: 285,
                        height: 45,
                        child: TextField(
                          controller: nadIdController,
                          decoration: const InputDecoration(
                            hintText: "0987657643233212",
                            hintStyle: TextStyle(
                              color: Color.fromARGB(40, 13, 13, 13),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF2F2F2),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(103, 58, 137, 255)),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(103, 58, 137, 255))),
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 255, 0, 0))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomSubTitle(
                      text: 'Select day',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                        child: SizedBox(
                            width: 300,
                            height: 200,
                            child: CustomCalender(
                              natId: nadIdController.text,
                              onPost: onPost,
                              hospitalId: widget.hospId,
                              departmentId: widget.depId,
                            )))
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
                        thickness: 10,
                        child: SizedBox(
                          width: 300,
                          height: 150,
                          child: ListView.builder(
                            itemBuilder: (_, index) =>  Times(time : cubit.reservationModel?.resource?[index]??""),
                            itemCount:
                                cubit.reservationModel?.resource?.length ?? 0,
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
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouters.kbookingDoneScreen);
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
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
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
    });
  }

  void onPost() {}
}

class Times extends StatelessWidget {
  const Times({
    super.key, required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            height: 50,
            width: 100,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0xFFA3A2A2)),
              ),
              color: Colors.white,
            ),
            child: Center(
                child: Text(
              time,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            )),
          ),
        ));
  }
}
