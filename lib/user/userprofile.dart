import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ).r,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios_new)),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/Ellipse 2.png'),
                      backgroundColor: Color(0xFFE7F0FF),
                      radius: 50.r,
                    ),
                    SizedBox(height: 10.h),
                    Text('Name')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                        top: 58, left: 31, right: 31, bottom: 43)
                    .r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xFFE7F0FF),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'name',
                          hintStyle: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 0.h,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                                  .r,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Text(
                      'Enter your Phone number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xFFE7F0FF),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'phone number',
                          hintStyle: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 0.h,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                                  .r,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Text(
                      'Enter your email ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xFFE7F0FF),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter email',
                          hintStyle: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 0.h,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                                  .r,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 240.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Color(0xFF2357D9)),
                            child: Center(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
