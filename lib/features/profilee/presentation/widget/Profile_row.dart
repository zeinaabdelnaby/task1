import 'package:flutter/material.dart';

class Profile_row extends StatelessWidget {
  const Profile_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 81,
        width: 103,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [Color(0xff4892FF), Color(0xff3A89FF)])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                  width: 73,
                  height: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffEBDED1)),
                  child: const Text("")),
            ),
          ],
        ));
  }
}
