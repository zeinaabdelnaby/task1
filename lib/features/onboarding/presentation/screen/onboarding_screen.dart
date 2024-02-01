import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/database/cache_helper.dart';
import 'package:flutter_grad_project/core/services/services_locator.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding1.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding2.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding3.dart';
import 'package:go_router/go_router.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

int pageIndex = 0;
PageController pageController = PageController(initialPage: 0);

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
        SizedBox(
          height: height,
          width: width,
          child: PageView(
            onPageChanged: (index) {
              pageChanged(index);
            },
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width / 25,
            ),
            Row(
              children: [
                Container(
                  height: 11,
                  width: pageIndex == 0 ? 42 : 11,
                  decoration: BoxDecoration(
                      color: pageIndex == 0
                          ? Colors.white
                          : const Color(0xff0165FC),
                      borderRadius: BorderRadius.circular(25)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    height: 11,
                    width: pageIndex == 1 ? 42 : 11,
                    decoration: BoxDecoration(
                        color: pageIndex == 1
                            ? Colors.white
                            : const Color(0xff0165FC),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Container(
                  height: 11,
                  width: pageIndex == 2 ? 42 : 11,
                  decoration: BoxDecoration(
                      color: pageIndex == 2
                          ? Colors.white
                          : const Color(0xff0165FC),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset("assets/images/Bent Arrow.png"),
            IconButton(
              icon: Image.asset(pageIndex < 2
                  ? 'assets/images/next btn.png'
                  : 'assets/images/lets go btn.png'),
              onPressed: () => onTapButton(),
            ),
            SizedBox(
              width: width / 25,
            ),
          ],
        ),
      ]),
    );
  }

  pageChanged(int index) {
    pageIndex = index;
    setState(() {});
  }

  onTapButton() {
    getIt<CacheHelper>().saveData(key: 'isVisited', value: true);
    if (pageIndex < 2) {
      pageIndex++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    } else {
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const NextPage(),
      //     ),
      //     (route) => false);
      GoRouter.of(context).pushReplacement(AppRouters.kSigninScreen);
      setState(() {});
    }
  }
}
