import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';

Future<dynamic> dialog(BuildContext context, double h, double w) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: AppColors.white,
          ),
          height: h / 2.6,
          width: w / 1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/mark.png', // Replace with your image path
                height: 100.0,
                width: 100.0,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: h / 14,
                width: w / 1.6,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "096854",
                    style: TextStyle(
                        fontSize: 35,
                        color: AppColors.white,
                        fontFamily: "JosefinSans_Regular"),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
