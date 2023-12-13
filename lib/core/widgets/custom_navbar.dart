import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
    int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: const Color(0xFF0165FC),
          backgroundColor: Colors.transparent,
          items: const <Widget>[
    Icon(Icons.home, size: 30,color: Colors.white,),
    Icon(Icons.person, size: 30,color: Colors.white,),
     Icon(Icons.message, size: 30,color: Colors.white,),
          ],
          onTap: (index) {
    setState(() {
            _page = index;
          });
          },
          
    );
  }
}