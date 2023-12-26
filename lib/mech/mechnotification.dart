import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechNotify extends StatefulWidget {
  const MechNotify({super.key});

  @override
  State<MechNotify> createState() => _MechNotifyState();
}

class _MechNotifyState extends State<MechNotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCEE2FF),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text('Notification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 45, right: 45).r,
        child: Column(children: [
          Container(
            height: 123.h,
            padding: EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(width: 1.w)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Admin notification ',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '10:00 am',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      '10/05/2023 ',
                      style: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
