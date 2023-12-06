import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton(
      {super.key, required this.value1, required this.value2});

  final String value1;
  final String value2;
  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String selectedValue ="true";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: const Color(0xFF0165FC),
          value: widget.value1,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
              print(selectedValue);
            });
          },
        ),
        Text(
          widget.value1,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        Radio(
          activeColor: const Color(0xFF0165FC),
          value: widget.value2,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
              print(selectedValue);
            });
          },
        ),
        Text(widget.value2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            )),
      ],
    );
  }
}
