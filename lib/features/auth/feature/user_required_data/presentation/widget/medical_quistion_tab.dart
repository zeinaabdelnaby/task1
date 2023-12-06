import 'package:flutter/material.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/widget/banner.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/widget/quistion.dart';

class MedicalQuistionContainer extends StatelessWidget {
  const MedicalQuistionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(children: [
        Quistions(),
        CustomBanner()
      ]),
    );
  }
}
