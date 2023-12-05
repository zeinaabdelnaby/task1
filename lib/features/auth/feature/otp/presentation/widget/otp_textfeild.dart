import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPtextFeild extends StatelessWidget {
  const OTPtextFeild({super.key, required this.first, required this.last, required this.controller});
 final bool first ;
 final bool last;
 final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 48.h,
      width: 48.w,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 2,
          color: const Color(0xffFFFFFF)
        ),
        borderRadius: BorderRadius.circular(12)
      ),
     child: TextField(
      onChanged: (value) {
        if(value.isNotEmpty && last==false){
          FocusScope.of(context).nextFocus();
        }else if(value.isEmpty && first==false) {
          FocusScope.of(context).previousFocus();
        }
      },
      keyboardType: TextInputType.number,
      inputFormatters: [LengthLimitingTextInputFormatter(1)],
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        border: InputBorder.none,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).width/6,
          maxWidth: MediaQuery.sizeOf(context).width/7,
        )
      ),

     ),
    );
  }
}