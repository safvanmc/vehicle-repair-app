import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/bottomnav.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFCEE2FF),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 61, left: 51, right: 51).r,
        child: SingleChildScrollView(
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
                height: 51.h,
              ),
              Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.h,
                  ),
                ),
              ),
              SizedBox(
                height: 49.h,
              ),
              Text(
                'Enter Username',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0.h,
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(left: 19, top: 14.5, bottom: 14.5).r,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 39.51.h,
              ),
              Text(
                'Enter Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0.h,
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(left: 19, top: 14.5, bottom: 14.5).r,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 90.h,
              ),
              Center(
                child: SizedBox(
                  height: 50.h,
                  width: 200.w,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottomnav(),
                            ));
                      },
                      child: Text(
                        'LOGIN',
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
        ),
      )),
    );
  }
}
