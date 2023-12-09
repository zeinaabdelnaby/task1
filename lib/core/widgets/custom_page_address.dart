import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/widgets/custom_rawMaterialButton.dart';

class CustomPageAddress extends StatelessWidget {
  const CustomPageAddress({super.key, required this.icon, required this.add});

  final IconData icon;
  final String add;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRawMaterialButton(
          icon: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Text(
            add,
            style: const TextStyle(
                fontFamily: "JosefinSans_SemiBold",
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
