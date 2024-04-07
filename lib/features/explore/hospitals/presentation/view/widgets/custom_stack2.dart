import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../info_hospital/data/model/hospital_model.dart';

class CustomStack2 extends StatelessWidget {
  const CustomStack2({super.key, required this.depId, this.resource});
  final String depId;
  final Resource? resource;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kinfoHospitalScreen,
            extra: {"depId": depId, "resource": resource});
      },
      child: Container(
        width: 256,
        // height: 225,
        margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF5EFEF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   child: ClipRRect(
          //       borderRadius: BorderRadius.circular(20.0),
          //       child: Image.network(resource?.imagePath ?? "",
          //           height: 130, fit: BoxFit.cover)),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  resource?.name ?? "",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      fontFamily: 'JosefinSans_Bold'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        resource?.description ?? "",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            fontFamily: 'JosefinSans_Light'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const StarRow()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
