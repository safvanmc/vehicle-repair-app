// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/adminhome/paymentlist.dart';

class Adminpayment extends StatefulWidget {
  const Adminpayment({super.key});

  @override
  State<Adminpayment> createState() => _AdminpaymentState();
}

class _AdminpaymentState extends State<Adminpayment> {
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
            Expanded(child: Paymentlist())
          ],
        ),
      )),
    );
  }
}
