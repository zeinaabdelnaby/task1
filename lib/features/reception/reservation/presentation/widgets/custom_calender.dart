import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// My app class to display the date range picker
class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  MyAppState createState() => MyAppState();
}

/// State for MyApp
class MyAppState extends State<CustomCalender> {
  String _selectedDate = '';
  final String _dateCount = '';
  // String _range = '';
  // String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _selectedDate = args.value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: SfDateRangePicker(
                  showNavigationArrow: true,
                  enablePastDates: false,
                  selectionColor: const Color(0xFF0165FC),
                  todayHighlightColor: const Color(0xFF0165FC),
                  onSelectionChanged: _onSelectionChanged,
                  initialSelectedDate: DateTime.now(),
                ),
              )
            ],
          ),
        ));
  }
}
