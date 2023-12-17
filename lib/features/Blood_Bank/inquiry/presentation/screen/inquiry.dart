import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:go_router/go_router.dart';

class Inguiry_Screen extends StatelessWidget {
  const Inguiry_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.bgscaffold,
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 30, right: w / 1.5),
          child: Container(
            width: 32,
            alignment: Alignment.center,
            height: 32,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ], color: AppColors.app, borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacement(AppRouters.kBloodBankRoute);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.capital_text,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 15),
              child: Text(
                "Blood Bank",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "JosefinSans_Bold",
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              width: w,
              color: AppColors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Id",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: "JosefinSans_Regular",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        color: AppColors.white,
                        fontFamily: "JosefinSans_Regular",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    "Amount",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: "JosefinSans_Regular",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: "JosefinSans_Regular",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.rectangle),
                        child: Center(child: Text((index + 1).toString())),
                      ),
                      Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              index == 0 ? "Name" : "",
                              style: TextStyle(
                                fontFamily: "JosefinSans_Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          )),
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.black,
                      ),
                      Container(
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color(0xffc7dbf8),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("15"))),
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.black,
                      ),
                      Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text(""))),
                    ],
                  );
                },
                itemCount: 50)
          ]),
        ));
  }
}

// List<inquiry> item = [
//   inquiry("1", "yasmeen", "15", "menof"),
//   inquiry("2", "yasmeen", "15", "menof"),
//   inquiry("3", "yasmeen", "15", "menof"),
//   inquiry("4", "yasmeen", "15", "menof"),
//   inquiry("5", "yasmeen", "15", "menof"),
//   inquiry("6", "yasmeen", "15", "menof"),
// ];

// class inquiry {
//   late String id;
//   late String name;
//   late String amount;
//   late String location;
//   inquiry(this.id, this.name, this.amount, this.location);
// }
