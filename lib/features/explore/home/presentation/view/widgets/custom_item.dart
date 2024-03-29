import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_read_more_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_starRow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/home_model.dart';

class CustomItem extends StatelessWidget {
  CustomItem({this.homeItemModel, super.key});
  HomeItemModel? homeItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouters.khospitalsScreen,
              extra: {"depId": homeItemModel?.id});
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: SizedBox(
                            width: 105.w,
                            height: 119.h,
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
                                return Image.asset(
                                    'assets/images/hospital2.png');
                              },
                              fit: BoxFit.cover,
                            ))),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            homeItemModel!.name ?? '',
                            style: TextStyle(
                                color: Color(0xFF0165FC),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
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
                                fontSize: 8.sp,
                                fontFamily: 'JosefinSans_SimiBold'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0.1,
                color: Color.fromARGB(255, 180, 180, 180),
              )
            ],
          ),
        ));
  }
}
