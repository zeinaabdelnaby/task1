import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryDropdownSearch extends StatefulWidget {
  const CountryDropdownSearch({super.key, required this.title});
 final String title ;
  @override
  _CountryDropdownSearchState createState() => _CountryDropdownSearchState();
}

class _CountryDropdownSearchState extends State<CountryDropdownSearch> {
  AutoCompleteTextField<String>? searchTextField;
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();

  List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    
  ];

  late String selectedCountry ;
 

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 105.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
           Text(
        widget.title,
        style: TextStyle(
          fontSize: 16.sp,
          color: const Color.fromARGB(255, 35, 35, 35),
          fontWeight: FontWeight.w400,
          
        ),
      ),
          searchTextField = AutoCompleteTextField<String>(
            key: key,
            clearOnSubmit: false,
            suggestions: countries,
            style: const TextStyle(fontSize: 16.0),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffE2E2E2),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Color(0xFFA7C3ED), width: 2.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Color(0xFFA7C3ED), width: 2.0),
              ),
            ),
            itemFilter: (item, query) {
              return item.toLowerCase().startsWith(query.toLowerCase());
            },
            itemSorter: (a, b) {
              return a.compareTo(b);
            },
            itemSubmitted: (item) {
            setState(() {
              selectedCountry = item; 
              if (searchTextField != null && searchTextField?.textField != null) {
                  searchTextField!.textField!.controller?.text = item;
                }

            });
            print('Selected Country: $selectedCountry'); 
          },
            itemBuilder: (context, item) {
              return ListTile(
                title: Text(item),
              );
            },
          ),
          SizedBox(height: 20.h),
          
        ],
      ),
    );
    
  }
}
