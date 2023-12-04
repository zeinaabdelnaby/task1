import 'package:flutter/material.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_bg.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/blurred_container.dart';
import 'package:flutter_grad_project/features/auth/feature/login/presentation/widget/custom_login_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        const AuthBg(),
        BlurredContainer(
          child: Padding(
            padding: const EdgeInsets.all(26.0).copyWith(top: 0),
            child: ListView(children: const [
              CustomLoginInput()
            ]),
          ),
        )
      ]),
    );
  }
}
