import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.onChanged,
    required this.title,
    this.icon,
    required this.isPassword,
    required this.hintText,
  }) : super(key: key);

  final Function(String)? onChanged;
  final String title;
   Widget? icon;
  final bool isPassword;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15.sp,
            color: const Color.fromARGB(255, 35, 35, 35),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 60.h,
          width: 332.w,
          child: TextFormField(
            onChanged: onChanged,
            obscureText: isPassword,
            style: const TextStyle(fontSize: 18),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 122, 122)),
              filled: true,
              fillColor: Colors.transparent,
              suffixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 2.sp,
                  color: const Color(0xff0165FC),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 2.sp,
                  color: const Color(0xff0165FC),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
