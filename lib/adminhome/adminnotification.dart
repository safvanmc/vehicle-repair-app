import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/notifylist.dart';

class AdminNotify extends StatefulWidget {
  const AdminNotify({super.key});

  @override
  State<AdminNotify> createState() => _AdminNotifyState();
}

class _AdminNotifyState extends State<AdminNotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/girl1.jpeg'),
            ),
            SizedBox(
              height: 22.h,
            ),
            Expanded(child: Notify())
          ],
        ),
      )),
    );
  }
}
