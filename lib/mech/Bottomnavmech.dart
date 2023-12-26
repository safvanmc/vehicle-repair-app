import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/mech/mechrating.dart';
import 'package:vehicle_repair/mech/mechservice2.dart';
import 'package:vehicle_repair/mech/mechservices.dart';

class MechBottomnav extends StatefulWidget {
  const MechBottomnav({super.key});

  @override
  State<MechBottomnav> createState() => _MechBottomnavState();
}

class _MechBottomnavState extends State<MechBottomnav> {
  int selectedindex = 0;
  static List Safwidgets = [
    MechServices(),
    Mechservice2(),
    Mechrating(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Color(0x592357D9), blurRadius: 14.r)]),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/plumber 1.png'), label: 'Request'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/repair-tool 1.png'),
                label: 'Service'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/star (2) 1.png'), label: 'Rating')
          ],
          currentIndex: selectedindex,
          elevation: 6,
          onTap: (int index) {
            setState(() {
              selectedindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          iconSize: 30.sp,
        ),
      ),
      body: Center(child: Safwidgets.elementAt(selectedindex)),
    );
  }
}
