import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/core/widgets/custom_rawMaterialButton.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/view/widgets/custom_stack.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/view_model/home_cubit/home_cubit.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/view_model/home_cubit/home_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).getHomeData();

    super.initState();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeLoading) {
          isLoading = true;
        } else if (state is HomeSuccess) {
          isLoading = false;
        }
      },
      builder: (context, state) {
        var cubit = context.read<HomeCubit>();
        return Scaffold(
          backgroundColor: const Color(0xFFE9E9E9),
          // bottomNavigationBar: const CustomNavBar(),
          body: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 46.0.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.1.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CustomRawMaterialButton(
                                icon: Icons.menu,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: 182.9.w,
                                    height: 46.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF0165FC),
                                      borderRadius:
                                          BorderRadius.circular(25.dg),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFFEDA963)
                                              .withOpacity(.5),
                                          blurRadius: 4.dg,
                                          offset: Offset(0.dg, 4.dg),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 153.33.w,
                                    height: 46.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF3A89FF),
                                        borderRadius:
                                            BorderRadius.circular(25.dg)),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 60.dg, top: 10.dg),
                                      child: Text(
                                        "search hospital",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: 'JosefinSans_Light',
                                            color: const Color(0xFFFFFFFF)
                                                .withOpacity(.7),
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 3,
                                    left: 5,
                                    child: Container(
                                      width: 39.43.w,
                                      height: 39.43.h,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF)
                                              .withOpacity(.5),
                                          borderRadius:
                                              BorderRadius.circular(25.dg)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.search,
                                            color: Color(0xFFFFFFFF),
                                            size: 18.07,
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 31.h),
                        Stack(
                          children: [
                            SizedBox(
                              width: 372.w,
                              child: Image.asset(
                                "assets/images/banner.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 35,
                              left: 226,
                              child: SizedBox(
                                height: 61.h,
                                child: const VerticalDivider(
                                  color: Color(0xFFFFFFFF),
                                  thickness: 1,
                                ),
                              ),
                            ),
                            Positioned(
                                left: 240,
                                top: 36,
                                child: Image.asset(
                                  "assets/images/text.png",
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Departments",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.sp,
                                      fontFamily: 'JosefinSans_Bold'),
                                ),
                                Image.asset("assets/images/vector.png")
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height,
                              height: 300,
                              child: GridView.builder(
                                itemCount: cubit.homeModel!.resource!.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: CustomStack(
                                    homeItemModel:
                                        cubit.homeModel!.resource![index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
