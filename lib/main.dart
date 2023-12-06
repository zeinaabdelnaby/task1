import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';

void main() {
  runApp(const HealthCareConnectionApp());
}

class HealthCareConnectionApp extends StatelessWidget {
  const HealthCareConnectionApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.router,
    );
  }
}
