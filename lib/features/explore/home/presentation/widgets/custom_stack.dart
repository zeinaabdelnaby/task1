import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:go_router/go_router.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.khospitalsScreen);
      },
      child: Stack(
        children: [
          Container(
              width: 179,
              height: 170,
              decoration: BoxDecoration(
                color: const Color(0xFF3A89FF).withOpacity(.5),
                borderRadius: BorderRadius.circular(20),
              )),
          Positioned(
            right: 0,
            top: 6,
            child: Container(
              width: 125,
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xFFE9E9E9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14.0, left: 30),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "department name",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              fontFamily: 'JosefinSans_Bold'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Lorem ipsum dolor \nsit met, connecter adipescent \nalit, Carabid \n-tur auctor Justo alit. Lorem \nipsum dolor \nsit met, connecter adipescent \nalit, Carabid \n-tur auctor Justo alit.",
                          style: TextStyle(
                              height: 1.2,
                              wordSpacing: -5,
                              fontWeight: FontWeight.w400,
                              fontSize: 6,
                              fontFamily: 'JosefinSans_SimiBold'),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: StarRow()),
                      CurtomReadMoreButton(
                        width: 17.28,
                        height: 17.28,
                        size: 9.21,
                        color: Color(0xFF0165FC),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
            right: 80,
            top: 1,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("assets/images/hospital.png")),
          ),
          Positioned(
            left: -10,
            top: -5,
            child: RawMaterialButton(
              elevation: 0.0,
              onPressed: () {},
              constraints: const BoxConstraints.tightFor(
                width: 10.58,
                height: 10.58,
              ),
              shape: const CircleBorder(),
              fillColor: const Color(0xFFFFFFFF).withOpacity(.6),
              child: const Icon(
                Icons.favorite_outline_rounded,
                size: 7.33,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
