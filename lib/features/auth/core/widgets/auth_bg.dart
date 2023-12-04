
import 'package:flutter/material.dart';

class AuthBg extends StatelessWidget {
  const AuthBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
         'assets/images/auth_bg.png', 
         fit: BoxFit.cover,
         width: double.infinity,
         height: double.infinity,
       ),
    );
  }
}