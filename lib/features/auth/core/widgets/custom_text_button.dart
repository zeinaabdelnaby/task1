import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onTap});


  final String text;
 final void Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text( text,style:  TextStyle(
            color: const Color(0xffFFFFFF),fontSize: 15.sp
          )),
        ],
      ),
    );
  }
}