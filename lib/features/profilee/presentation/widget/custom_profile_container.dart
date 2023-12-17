import 'package:flutter/material.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/Profile_row.dart';

import '../../../../core/utils/app_colors.dart';

class custom_container_profile extends StatelessWidget {
  const custom_container_profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/Mask group.png")),
        const Text(
          "@cassiejo",
          style: TextStyle(
            color: AppColors.profile_name,
            fontFamily: "JosefinSans_Bold",
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
        const Text("Cassie Jones",
            style: TextStyle(
              color: AppColors.black,
              fontFamily: "JosefinSans_Bold",
              fontWeight: FontWeight.w400,
              fontSize: 18,
            )),
        const Text(
          "patient | Joined Jan 2023",
          style: TextStyle(
            color: AppColors.capital_text,
            fontFamily: "JosefinSans_Bold",
            fontWeight: FontWeight.w400,
            fontSize: 11,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Profile_row(),
              Profile_row(),
              Profile_row(),
            ],
          ),
        ),
      ],
    );
  }
}
