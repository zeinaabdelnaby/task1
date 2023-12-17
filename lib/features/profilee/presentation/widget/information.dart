import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class information extends StatelessWidget {
  const information({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: Text(
            "Account Information",
            style: TextStyle(
              color: AppColors.capital_text,
              fontFamily: "JosefinSans_Bold",
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.email_outlined, color: Color(0xff0362F2),
                  // size: 17,
                )),
            Text("Email", style: style_left_column()),
            const SizedBox(
              width: 80,
            ),
            style_icon(),
            GradientText(
              'cassie.jones@gmail.com',
              style: style_right_column(),
              colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.local_phone_outlined,
                  color: Color(0xff0362F2),
                  size: 20,
                )),
            Text("Phone", style: style_left_column()),
            const SizedBox(
              width: 100,
            ),
            style_icon(),
            GradientText(
              '+20 123 456 789',
              style: style_right_column(),
              colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.creditCard,
                  color: Color(0xff0362F2),
                  size: 20,
                )),
            Text("Payment", style: style_left_column()),
            const SizedBox(
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                "assets/images/profile3.png",
                width: 35,
                height: 30,
              ),
            ),
            Image.asset(
              "assets/images/profile2.png",
              width: 35,
              height: 30,
            )
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.listCheck,
                  color: Color(0xff0362F2),
                  size: 20,
                )),
            Text("Wishlist", style: style_left_column()),
            const SizedBox(
              width: 90,
            ),
            style_icon(),
            GradientText(
              'Go to your wishlist',
              style: style_right_column(),
              colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff0362F2),
                  size: 20,
                )),
            Text("Location", style: style_left_column()),
            const SizedBox(
              width: 60,
            ),
            style_icon(),
            GradientText(
              'Egypt, El Mahala Kubra.',
              style: style_right_column(),
              colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.calendarDays,
                  color: Color(0xff0362F2),
                  size: 20,
                )),
            Text("Joined", style: style_left_column()),
            const SizedBox(
              width: 150,
            ),
            GradientText(
              '26 jan 2023',
              style: style_right_column(),
              colors: const [Color(0xff0165fce), Color(0xff2C80FE)],
            ),
          ],
        ),
        button()
      ],
    );
  }

  TextStyle style_right_column() {
    return const TextStyle(
      fontFamily: "JosefinSans_Bold",
      fontWeight: FontWeight.w400,
      fontSize: 13,
    );
  }

  TextStyle style_left_column() {
    return TextStyle(
      color: AppColors.capital_text,
      fontFamily: "JosefinSans_Bold",
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );
  }
}

class style_icon extends StatelessWidget {
  const style_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.penToSquare,
          color: Color(0xff0362F2),
          size: 17,
        ));
  }
}
