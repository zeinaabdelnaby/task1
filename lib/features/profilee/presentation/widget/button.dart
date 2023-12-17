import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';

class button extends StatelessWidget {
  const button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: const Color(0xff1f78ff),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: AppColors.white,
              ),
            ),
            const Text(
              'Log out',
              style: TextStyle(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
