import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/home_model.dart';

class CustomStack extends StatelessWidget {
  CustomStack({this.homeItemModel, super.key});
  HomeItemModel? homeItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.khospitalsScreen);
      },
      child: Stack(
        children: [
          Container(
              width: 179.w,
              height: 190.h,
              decoration: BoxDecoration(
                color: const Color(0xFF3A89FF).withOpacity(.5),
                borderRadius: BorderRadius.circular(20),
              )),
          Positioned(
            right: 0,
            top: 5,
            child: Container(
              width: 125.w,
              height: 170.h,
              decoration: BoxDecoration(
                color: const Color(0xFFE9E9E9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14.0, left: 30),
                  child: Container(
                    padding: const EdgeInsets.only(left: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homeItemModel!.name ?? '',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8.sp,
                              fontFamily: 'JosefinSans_Bold'),
                        ),
                        SizedBox(
                          height: 5.77.h,
                        ),
                        Text(
                          homeItemModel!.description ?? '',
                          style: TextStyle(
                              height: 1.2,
                              wordSpacing: -5,
                              fontWeight: FontWeight.w400,
                              fontSize: 6.sp,
                              fontFamily: 'JosefinSans_SimiBold'),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: StarRow()),
                      CurtomReadMoreButton(
                        width: 17.28.w,
                        height: 17.28.h,
                        size: 9.21.sp,
                        color: const Color(0xFF0165FC),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
            right: 97,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  width: 87.56.w,
                  height: 102.56.h,
                  child: 
                  // CachedNetworkImage(
                  //   imageUrl: homeItemModel!.imagePath ?? 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fth-thumbnailer.cdn-si-edu.com%2FF6MN7vfNd8zeHpNYi58PzoC_OAo%3D%2F1000x750%2Ffilters%3Ano_upscale()%2Fhttps%3A%2F%2Ftf-cmsv2-smithsonianmag-media.s3.amazonaws.com%2Ffiler%2Fb4%2Fc6%2Fb4c65fd0-01ba-4262-9b3d-f16b53bca617%2Fistock-172463472.jpg&tbnid=VbGRavw01Tvs1M&vet=12ahUKEwiiysSC3qaEAxWOVaQEHesNAtAQMygGegQIARB6..i&imgrefurl=https%3A%2F%2Fwww.smithsonianmag.com%2Fhistory%2Fwhen-fresh-air-went-out-fashion-hospitals-180963710%2F&docid=76AS5G-qG6iIRM&w=1000&h=750&q=hospital&ved=2ahUKEwiiysSC3qaEAxWOVaQEHesNAtAQMygGegQIARB6',
                  //   errorWidget: (context, url, error) =>
                  //       Image.asset('assets/images/hospital2.png'),
                  //   fit: BoxFit.cover,
                  // ),
                  Image.network(
                    homeItemModel!.imagePath ?? '',
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/images/hospital2.png');
                    },
                    fit: BoxFit.cover,
                  )
                )),
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
