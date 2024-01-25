import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckRow extends StatelessWidget {
  const CustomCheckRow({super.key});

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
          "Lorem ipsum dolor \nsit met, connecter adipescent alit, Carabid",
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
