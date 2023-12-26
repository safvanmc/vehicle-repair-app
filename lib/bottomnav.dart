import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/adminhome.dart';
import 'package:vehicle_repair/adminhome/adminnotification.dart';
import 'package:vehicle_repair/adminhome/adminpayment.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedindex = 0;
  static List Safwidgets = [AdminHome(), Adminpayment(), AdminNotify()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/home (1).png'),
              activeIcon: Image.asset('assets/homeblue.png'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/wallet.png'),
              label: 'Paymnet',
              activeIcon: Image.asset('assets/walletblue.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/conversation.png'),
              label: 'Notification',
              activeIcon: Image.asset('assets/conversationblue.png'),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          iconSize: 24.sp,
          elevation: 5,
          onTap: (int index) {
            setState(() {
              selectedindex = index;
            });
          },
          selectedItemColor: Color(0xFF2357D9),
        ),
        body: Center(
          child: Safwidgets.elementAt(selectedindex),
        ));
  }
}
