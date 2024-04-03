import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_page_address.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:flutter_grad_project/core/widgets/custom_subtitle.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/data/model/hospital_model.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view/widgets/custom_check_row.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view_model/hospital_cubit.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view_model/hospital_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class InfoHospitalScreen extends StatefulWidget {
  const InfoHospitalScreen({super.key, required this.index});
  final int index;
  @override
  State<InfoHospitalScreen> createState() => _InfoHospitalScreenState();
}

class _InfoHospitalScreenState extends State<InfoHospitalScreen> {
  void initState() {
 BlocProvider.of<HospitalCubit>(context).getHospitalData();
    super.initState();
  }

  int currentIndex = 0;
  bool isLoading = true;


  final items = [
    "assets/images/hospital2.png",
    "assets/images/hospital.png",
    "assets/images/hospital2.png",
    "assets/images/hospital2.png",
    "assets/images/hospital2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HospitalCubit, HospitalState>(
      listener: (context, state) {
        if (state is HospitalLoading) {
          isLoading = true;
        } else if (state is HospitalSuccess) {
          isLoading = false;
        }
      },
      builder: (BuildContext context, state) {
        var cubit = context.read<HospitalCubit>();
        return Scaffold(
          backgroundColor: const Color(0xFFE9E9E9),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 46.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomPageAddress(
                      icon: Icons.keyboard_double_arrow_left,
                      add: 'Hospital Details'),
                  SizedBox(
                    height: 45.85.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: SizedBox(
                        height: 76.h,
                        width: 120.w,
                        child: Stack(children: [
                          Image.asset("assets/images/rating_button.png"),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.0.w),
                                  child: const StarRow(),
                                ),
                                Text(
                                  "(200 Review )",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 8.sp,
                                      fontFamily: "JosefinSans_Light"),
                                )
                              ],
                            ),
                          ),
                        ])),
                  ),
                  Stack(alignment: AlignmentDirectional.center, children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 247.2.h,
                        child: Image.asset(
                          "assets/images/slider_shadow.png",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      top: 0,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180.0),
                          color: Colors.transparent,
                        ), // BoxDecoration
                        width: 310.07.w,
                        height: 210.41.h,
                        child: CustomCarouselSlider(
                          items: items
                              .map(
                                (image) => CarouselItem(
                                  image: AssetImage(image),
                                  boxDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(180.0),
                                  ),
                                ),
                              )
                              .toList(),
                          unselectedDotColor: const Color(0xFFFFFFFF),
                          selectedDotColor: const Color(0xFF010101),
                          height: 187.41.h,
                          width: 304.07.w,
                          autoplay: true,
                        ),
                      ),
                    ),
                  ]),
                  // Center(
                  //   child: DotsIndicator(
                  //     dotsCount: items.length,
                  //     position: currentIndex,
                  //     decorator: DotsDecorator(
                  //       activeColor: Color(0xFF010101),
                  //       color:  Color(0xFFFFFFFF),
                  //       spacing :EdgeInsets.symmetric(horizontal: 4.26),
                  //       size:  Size.square(6),
                  //       activeSize:  Size(10.68, 4.87),
                  //       activeShape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(5.0)),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 79.84.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            cubit.hospitalModel?.resource![widget.index].name?? "",
                            style: TextStyle(
                                fontFamily: "JosefinSans_SemiBold",
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          ),
                          CurtomReadMoreButton(
                            width: 28.74,
                            height: 29.09,
                            size: 13,
                            color: const Color(0xFF0E0D0D).withOpacity(.79),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Image.asset("assets/images/dash_line.png"),
                      ),
                      // SizedBox(height: 10,),
                      const CustomSubTitle(
                        text: 'Description',
                      ),
                      Row(
                        children: [
                          RawMaterialButton(
                              elevation: 0.0,
                              onPressed: () {},
                              constraints: const BoxConstraints.tightFor(
                                width: 20,
                                height: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              fillColor: const Color(0xFF0165FC),
                              child: Icon(
                                Icons.check,
                                size: 15.sp,
                                color: const Color(0xFFFFFFFF),
                              )),
                          Text(
                            cubit.hospitalModel?.resource![widget.index].description?? "",
                            style: TextStyle(
                                color: const Color(0xFF000000),
                                fontFamily: "JosefinSans_Light",
                                fontWeight: FontWeight.w300,
                                fontSize: 11.sp),
                          )
                        ],
                      ),

                      // ListView.builder(
                      //   scrollDirection: Axis.vertical,
                      //   shrinkWrap: true,
                      //   itemCount: 2,
                      //   itemBuilder: (BuildContext context, int index) =>
                      //       CustomCheckRow(
                      //         resource: cubit.hospitalModel?.resource![index],
                      //       )
                      //   //     Row(
                      //   //   children: [
                      //   //     RawMaterialButton(
                      //   //         elevation: 0.0,
                      //   //         onPressed: () {},
                      //   //         constraints: const BoxConstraints.tightFor(
                      //   //           width: 20,
                      //   //           height: 20,
                      //   //         ),
                      //   //         shape: RoundedRectangleBorder(
                      //   //             borderRadius: BorderRadius.circular(4)),
                      //   //         fillColor: const Color(0xFF0165FC),
                      //   //         child: Icon(
                      //   //           Icons.check,
                      //   //           size: 15.sp,
                      //   //           color: const Color(0xFFFFFFFF),
                      //   //         )),
                      //   //     Text(
                      //   //       resource?.description ?? "",
                      //   //       style: TextStyle(
                      //   //           color: const Color(0xFF000000),
                      //   //           fontFamily: "JosefinSans_Light",
                      //   //           fontWeight: FontWeight.w300,
                      //   //           fontSize: 11.sp),
                      //   //     )
                      //   //   ],
                      //   // ),
                      // ),
                      const SizedBox(height: 20),

                      Center(
                        child: SizedBox(
                          width: 150,
                          height: 40,
                          child: OutlinedButton.icon(
                            icon: const Icon(
                              Icons.credit_card,
                              color: Color(0xFF2C80FE),
                            ),
                            label: Text(
                              "Booking",
                              style: TextStyle(
                                  fontFamily: "JosefinSans_SemiBold",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: const Color(0xFF000000)),
                            ),
                            onPressed: () {
                              GoRouter.of(context)
                                  .push(AppRouters.kreservationScreen);
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 1.0,
                                  color:
                                      const Color(0xFF0165FC).withOpacity(.7)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Imagee extends StatelessWidget {
  const Imagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(180.0),
        // image:  DecorationImage(
        //   // image: AssetImage(),
        //   fit: BoxFit.fill,
        // ),
      ), // BoxDecoration
      width: 304.07,
      height: 187.41,
      // child: ,
    );
  }
}
