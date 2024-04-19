import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/core/database/cache_helper.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view_model/reservation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../view_model/reservation_states.dart';

/// My app class to display the date range picker
class CustomCalender extends StatefulWidget {
  const CustomCalender({
    super.key,
    required this.natId,
    required this.onPost,
    required this.hospitalId,
    required this.departmentId,
  });

  final String natId;
  final VoidCallback onPost;
  final String hospitalId;
  final String departmentId;

  @override
  MyAppState createState() => MyAppState();
}

/// State for MyApp
class MyAppState extends State<CustomCalender> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  String _selectedDate = '';

  // final String _dateCount = '';

  // String _range = '';
  // String _rangeCount = '';

  void onSelectionChanged(
      DateRangePickerSelectionChangedArgs args, BuildContext context) {
    if (widget.natId == '') {
      scaffoldkey.currentState!.showBottomSheet(((context) => Container(
            height: 70,
            width: 1000,
            color: Colors.blue,
            child: const Text(
              "Enter National Id First",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )));

      // ScaffoldMessenger.of(BuildContext context).showSnackBar(snackBar);
    } else {
      //TODO:add post request
      setState(() {
        _selectedDate = args.value.toString();
      });
      CacheHelper().saveData(key: 'selectDate', value: _selectedDate);
      print("selected date : $_selectedDate");
      BlocProvider.of<ReservationCubit>(context).getAvailableTime(
        hospitalId: widget.hospitalId,
        departmentId: widget.departmentId,
        date: _selectedDate.toString(),
        patientId: widget.natId,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReservationCubit, ReservationState>(
      listener: (context, state) {},
      builder: (BuildContext context, state) => Scaffold(
        key: scaffoldkey,
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
                  onSelectionChanged: (args) {
                    onSelectionChanged(args, context);
                  },
                  initialSelectedDate: DateTime.now(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// void showSnackBar(BuildContext context ,String message) {
//   scaffoldkey.of(context).showSnackBar(
//      SnackBar(
//       content: Text("Enter National Id First"),
//       behavior: SnackBarBehavior.fixed,
//       duration: Duration(seconds: 3),
//     ),
//   );
// }

// {
//   "patientId": "9d3d090e-5a0b-4b2c-08a3-08dc3ac12dd4",
//   "date": "2024-05-20T11:04:30.136Z",
//   "hospitalId": "74e257ae-0e76-4493-8563-08dc3249b7cd",
//   "departmentId": "e8537b3b-c672-4410-cb5d-08dc2ef9f66b",
//   "status": 0
// }