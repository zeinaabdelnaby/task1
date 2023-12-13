import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';

class InguiryScreen extends StatelessWidget {
  const InguiryScreen({super.key});

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
                offset: const Offset(0, 3),
              )
            ], color: AppColors.app, borderRadius: BorderRadius.circular(4)),
            child: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.capital_text,
              ),
            ),
          ),
        ),
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 3, left: 15),
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
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            width: w,
            color: AppColors.blue,
            child: const Row(
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
                  padding: EdgeInsets.only(),
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
          Container(
              height: 650,
              width: w,
              decoration: const BoxDecoration(color: AppColors.bgscaffold),
              child: ListView.builder(
                  itemCount: item.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(item[index].id),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(item[index].name),
                        ),
                        Text(item[index].amount),
                        Text(item[index].location),
                      ],
                    );
                  })

              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 30),
              //       child: Text(
              //         "Name",
              //         style: TextStyle(
              //           color: AppColors.white,
              //           fontFamily: "JosefinSans_Regular",
              //           fontWeight: FontWeight.w400,
              //           fontSize: 20,
              //         ),
              //       ),
              //     ),
              //     Text(
              //       "Amount",
              //       style: TextStyle(
              //         color: AppColors.white,
              //         fontFamily: "JosefinSans_Regular",
              //         fontWeight: FontWeight.w400,
              //         fontSize: 20,
              //       ),
              //     ),
              //     Text(
              //       "Location",
              //       style: TextStyle(
              //         color: AppColors.white,
              //         fontFamily: "JosefinSans_Regular",
              //         fontWeight: FontWeight.w400,
              //         fontSize: 20,
              //       ),
              //     )
              //   ],
              // ),
              //sosoossoooooooooooooooooooooooooooooooo
              // child: Table(
              //     border: TableBorder(
              //         horizontalInside:
              //             BorderSide(color: AppColors.bgscaffold, width: 10.0)),
              //     children: [
              //       //This table row is for the table header which is static
              //       TableRow(children: [
              //         Center(
              //           child: Padding(
              //             padding: const EdgeInsets.symmetric(
              //                 vertical: 10, horizontal: 10),
              //             child: Text(
              //               "Id",
              //               style: TextStyle(
              //                 color: AppColors.white,
              //                 fontFamily: "JosefinSans_Regular",
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 20,
              //               ),
              //             ),
              //           ),
              //         ),

              //         Center(
              //           child: Padding(
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             child: Text(
              //               "Name",
              //               style: TextStyle(
              //                 color: AppColors.white,
              //                 fontFamily: "JosefinSans_Regular",
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 20,
              //               ),
              //             ),
              //           ),
              //         ),
              //         Center(
              //           child: Padding(
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             child: Text(
              //               "Amount",
              //               style: TextStyle(
              //                 color: AppColors.white,
              //                 fontFamily: "JosefinSans_Regular",
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 20,
              //               ),
              //             ),
              //           ),
              //         ),
              //         Center(
              //           child: Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10),
              //               child: Text(
              //                 "Location",
              //                 style: TextStyle(
              //                   color: AppColors.white,
              //                   fontFamily: "JosefinSans_Regular",
              //                   fontWeight: FontWeight.w400,
              //                   fontSize: 20,
              //                 ),
              //               )),
              //         ),
              //       ]),
              //     ])
//sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
              // child: DataTable(
              //   columns: [
              //     DataColumn(
              //       label: Text("Id",
              //           style: TextStyle(
              //             color: AppColors.white,
              //             fontFamily: "JosefinSans_Regular",
              //             fontWeight: FontWeight.w400,
              //             fontSize: 18,
              //           )),
              //     ),
              //     DataColumn(
              //       label: Text(
              //         "Name",
              //         style: TextStyle(
              //           color: AppColors.white,
              //           fontFamily: "JosefinSans_Regular",
              //           fontWeight: FontWeight.w400,
              //           fontSize: 18,
              //         ),
              //       ),
              //     ),
              //     DataColumn(
              //       label: Text("Amount",
              //           style: TextStyle(
              //             color: AppColors.white,
              //             fontFamily: "JosefinSans_Regular",
              //             fontWeight: FontWeight.w400,
              //             fontSize: 18,
              //           )),
              //     ),
              //     DataColumn(
              //         label: Text(
              //       "Location",
              //       style: TextStyle(
              //         color: AppColors.white,
              //         fontFamily: "JosefinSans_Regular",
              //         fontWeight: FontWeight.w400,
              //         fontSize: 18,
              //       ),
              //     )),
              //   ],

              // ),

              //   child: Table(
              //     defaultColumnWidth: FixedColumnWidth(120.0),
              //     // border: TableBorder.all(
              //     //     color: Colors.black, style: BorderStyle.solid, width: 2),
              //     children: [
              //       TableRow(children: [
              //         Column(children: [
              //           Text(
              //             "Id",
              //             style: TextStyle(
              //               color: AppColors.white,
              //               fontFamily: "JosefinSans_Regular",
              //               fontWeight: FontWeight.w400,
              //               fontSize: 20,
              //             ),
              //           ),
              //         ]),
              //         Column(children: [
              //           Text(
              //             "Name",
              //             style: TextStyle(
              //               color: AppColors.white,
              //               fontFamily: "JosefinSans_Regular",
              //               fontWeight: FontWeight.w400,
              //               fontSize: 20,
              //             ),
              //           ),
              //         ]),
              //         Column(children: [
              //           Text(
              //             "Amount",
              //             style: TextStyle(
              //               color: AppColors.white,
              //               fontFamily: "JosefinSans_Regular",
              //               fontWeight: FontWeight.w400,
              //               fontSize: 20,
              //             ),
              //           ),
              //         ]),
              //         Column(
              //           children: [
              //             Text(
              //               "Location",
              //               style: TextStyle(
              //                 color: AppColors.white,
              //                 fontFamily: "JosefinSans_Regular",
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 20,
              //               ),
              //             ),
              //           ],
              //         )
              //       ]),
              //       TableRow(children: [
              //         Column(children: [Text('Javatpoint')]),
              //         Column(children: [Text('Flutter')]),
              //         Column(children: [Text('5*')]),
              //         Column(children: [Text('5*')]),
              //       ]),
              //       TableRow(children: [
              //         Column(children: [Text('Javatpoint')]),
              //         Column(children: [Text('MySQL')]),
              //         Column(children: [Text('5*')]),
              //         Column(children: [Text('5*')]),
              //       ]),
              //       TableRow(children: [
              //         Column(children: [Text('Javatpoint')]),
              //         Column(children: [Text('ReactJS')]),
              //         Column(children: [Text('5*')]),
              //         Column(children: [Text('5*')]),
              //       ]),
              //     ],
              //   ),
              // )
              // ]
              )
        ]));
  }
}

List<inquiry> item = [
  inquiry("1", "yasmeen", "15", "menof"),
  inquiry("2", "yasmeen", "15", "menof"),
  inquiry("3", "yasmeen", "15", "menof"),
  inquiry("4", "yasmeen", "15", "menof"),
  inquiry("5", "yasmeen", "15", "menof"),
  inquiry("6", "yasmeen", "15", "menof"),
];

class inquiry {
  late String id;
  late String name;
  late String amount;
  late String location;
  inquiry(this.id, this.name, this.amount, this.location);
}
