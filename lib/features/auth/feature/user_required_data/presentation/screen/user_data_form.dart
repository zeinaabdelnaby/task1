import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/widget/custom_button.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_labeld_textfeild.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/widget/custom_drop_down_search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserDataForm extends StatelessWidget {
  const UserDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(
                onChanged: (value) {},
                title: 'Full Name',
                isPassword: false,
                hintText: 'your full name',
                fillColor: const Color(0xffE2E2E2),
                borderColor: const Color(0xFFA7C3ED),
              ),
              CustomTextField(
                onChanged: (value) {},
                title: 'Phone Number',
                isPassword: false,
                hintText: 'your phone number',
                fillColor: const Color(0xffE2E2E2),
                borderColor: const Color(0xFFA7C3ED),
              ),
              CustomTextField(
                onChanged: (value) {},
                title: 'Email',
                isPassword: false,
                hintText: 'your Email',
                fillColor: const Color(0xffE2E2E2),
                borderColor: const Color(0xFFA7C3ED),
              ),
              CustomTextField(
                onChanged: (value) {},
                title: 'birthdate',
                isPassword: false,
                hintText: 'your phone number',
                fillColor: const Color(0xffE2E2E2),
                borderColor: const Color(0xFFA7C3ED),
              ),
              CustomTextField(
                onChanged: (value) {},
                title: 'Address Title',
                isPassword: false,
                hintText: '(Home , office ,etc)',
                fillColor: const Color(0xffE2E2E2),
                borderColor: const Color(0xFFA7C3ED),
              ),
                 Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Row(
                    children: [
                       const CountryDropdownSearch(title: 'Country',),
                       SizedBox(width: 10.w,),
                       const CountryDropdownSearch(title: 'City',),
                       SizedBox(width: 10.w,),
                       const CountryDropdownSearch(title: 'Town',)
                       
                    ],
                  ),

                  
                ),
                TextButton(onPressed: (){print('object');}, child: const Text('Go to add your history health informarion',style: TextStyle(fontSize:15,fontFamily: 'josefinSans',fontWeight: FontWeight.bold,color: Colors.black, decoration: TextDecoration.underline,),)),

                        CustomButton(labele: 'Create Account', onTap: (){print('account created');})
                    ],
          ),
        )
      ],
    ));
  }
}
