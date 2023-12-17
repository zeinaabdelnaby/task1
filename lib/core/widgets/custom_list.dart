import 'package:flutter/material.dart';

class custom_list extends StatelessWidget {
  const custom_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Text(""))),
            ],
          );
        },
        itemCount: 50);
  }
}
