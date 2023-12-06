import 'package:flutter/material.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/widget/medical_quistion_tab.dart';
import 'package:go_router/go_router.dart';

class MedicalRecord extends StatelessWidget {
  const MedicalRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ListView.builder(itemBuilder:(context, index) => const MedicalQuistionContainer(), 
      itemCount: 15,
      ),
       floatingActionButton: SizedBox(
        width: 120,
         child: FloatingActionButton(
          
          onPressed: () {
            print('Submit answers');
            GoRouter.of(context).pop();
          }, 
          backgroundColor: const Color(0xFF0165FC),
          child: const Text('Submit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
       ),
    );
  }
}