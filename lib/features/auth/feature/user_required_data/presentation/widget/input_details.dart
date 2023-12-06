
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputDetails extends StatelessWidget {
  const InputDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,top: 12),
      child: Container(
          width: 300.w,
          height: 25.h,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black))),
          child: const TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: 'Details',
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none),
          )),
    );
  }
}
