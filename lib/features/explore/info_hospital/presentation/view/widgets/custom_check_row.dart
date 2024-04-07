import 'package:flutter/material.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/data/model/hospital_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckRow extends StatelessWidget {
   CustomCheckRow({this.resource,required String depId,required String hospId,super.key});
Resource? resource;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
            elevation: 0.0,
            onPressed: () {},
            constraints: const BoxConstraints.tightFor(
              width: 20,
              height: 20,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            fillColor: const Color(0xFF0165FC),
            child: Icon(
              Icons.check,
              size: 15.sp,
              color: const Color(0xFFFFFFFF),
            )),
        Text(
          resource?.description??"",
          style: TextStyle(
              color: const Color(0xFF000000),
              fontFamily: "JosefinSans_Light",
              fontWeight: FontWeight.w300,
              fontSize: 11.sp),
        )
      ],
    );
  }
}
