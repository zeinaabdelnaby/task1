import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:go_router/go_router.dart';

class CustomStack2 extends StatelessWidget {
  const CustomStack2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kinfoHospitalScreen);
      },
      child: Container(
        width: 156,
        height: 225,
        decoration: BoxDecoration(
          color: const Color(0xFFF5EFEF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(children: [
          Positioned(
            left: 4,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("assets/images/hospital2.png")),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 130.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "hospital name",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'JosefinSans_Bold'),
                      ),
                      Text(
                        "Lorem \nipsum.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'JosefinSans_Light'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      StarRow()
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 13, top: 50),
                  child: CurtomReadMoreButton(
                    width: 30,
                    height: 30,
                    size: 17.24,
                    color: Color(0xFF0165FC),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: 100,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outlined,
                    color: Color.fromARGB(255, 228, 60, 48),
                  ))),
        ]),
      ),
    );
  }
}
