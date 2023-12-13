import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';

class Blood_Bank extends StatelessWidget {
  const Blood_Bank({super.key});

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
                offset: Offset(2, 3),
              )
            ], color: AppColors.white, borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.capital_text,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(children: [
              Container(
                width: w,
                height: h / 2.4,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(0)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Blood Donation",
                        style: TextStyle(
                          color: AppColors.white,
                          fontFamily: " JosefinSans_Regular",
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                      Image.asset(
                        "assets/images/blood donat 2.png",
                        width: 250,
                        height: 275,
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: h / 10,
                width: w / 1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text("Donation",
                            style: TextStyle(
                              color: AppColors.blue,
                              fontFamily: "JosefinSans_Bold",
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ))),
                    Container(
                      height: 100,
                      width: 2,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        // BoxShadow(
                        //   color: Colors.black, //New
                        //   blurRadius: 25.0,
                        // )
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Enquiry",
                            style: TextStyle(
                              color: AppColors.blue,
                              fontFamily: "JosefinSans_Bold",
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            )))
                  ],
                ),
              ),
              // SizedBox(
              //   height: h / 5,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 260, top: 50),
                child: Text(
                  "national id",
                  style: TextStyle(
                      fontSize: 15, fontFamily: "JosefinSans_Regular"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: AppColors.black,
                      width: 2.0,
                    ),
                  ),
                  hintText: '0987657643233212',
                  hintStyle: TextStyle(
                      fontSize: 14, fontFamily: "JosefinSans_Regular"),
                  contentPadding:
                      EdgeInsets.all(10.0), // Adjust padding as needed
                )),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 30, right: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Color(0xff1f78ff),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Apply Request',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontFamily: "JosefinSans_Regular"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ]),
          ],
        ));
  }
}
