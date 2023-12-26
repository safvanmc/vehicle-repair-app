import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/adminlogin.dart';
import 'package:vehicle_repair/mech/Mechlogin.dart';
import 'package:vehicle_repair/user/userlogin.dart';

class UserorMech extends StatefulWidget {
  const UserorMech({super.key});

  @override
  State<UserorMech> createState() => _UserorMechState();
}

class _UserorMechState extends State<UserorMech> {
  Color _color = Colors.white;
  Color _textcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCEE2FF),
      // appBar: AppBar(
      //     elevation: 0,
      //     backgroundColor: Color(0xFFCEE2FF),
      //     leading: IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.arrow_back_ios_new,
      //         color: Colors.black,
      //       ),
      //     )),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 31, left: 40, right: 40).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                  height: 140.h,
                  width: 140.w,
                  child: Image.asset('assets/tow 1.png')),
            ),
            SizedBox(
              height: 29.h,
            ),
            Text(
              ' who you are ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _color = Color(0xFF2357D9);
                  _textcolor = Colors.white;
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mechlogin(),
                      ));
                });
              },
              child: Container(
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r), color: _color),
                  padding: EdgeInsets.only(left: 20).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mechanic',
                        style: TextStyle(
                          color: _textcolor,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.h,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Userlogin(),
                    ));
              },
              child: Container(
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                  padding: EdgeInsets.only(left: 20).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'User',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.h,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Adminlogin(),
                        ));
                  },
                  child: Text(
                    'Admin Login',
                    style: TextStyle(
                      color: Color(0xFF2357D9),
                      fontSize: 22.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.h,
                    ),
                  )),
            ),
            SizedBox(
              height: 227.h,
            ),
            Center(
              child: SizedBox(
                height: 50.h,
                width: 200.w,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.h,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2357D9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)))),
              ),
            )
          ],
        ),
      )),
    );
  }
}
