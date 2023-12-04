import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
   const CustomDropDownButton({super.key});
 
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  String? selectedType;
  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Colors.transparent,
     border: Border.all(
      width: 2,
          color:  const Color(0xff0165FC), // Set the border color here
        ),
  ),
  child: DropdownButton(
    hint: const Text('patient , doctor'),
    isExpanded: true,
    dropdownColor: Colors.transparent,
    style: const TextStyle(fontSize: 20, color: Colors.white),
    items: ['patient', 'doctor']
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ))
        .toList(),
    onChanged: (value) {
      setState(() {
        selectedType = value;
        print(selectedType);
      });
    },
  ),
);
  }
}
