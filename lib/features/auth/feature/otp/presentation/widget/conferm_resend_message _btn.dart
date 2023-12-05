
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendMessageBtn extends StatelessWidget {
  const ResendMessageBtn({
    super.key, this.onTap,
  });
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Didn’t receive code? Request',
              style: TextStyle(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Text(
                  'another one .',
                  style: TextStyle(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap:onTap ,
                  child: Text(
                    'here',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set the color you want
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
