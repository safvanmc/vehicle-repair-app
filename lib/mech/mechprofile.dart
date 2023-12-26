import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechprofile extends StatefulWidget {
  const Mechprofile({super.key});

  @override
  State<Mechprofile> createState() => _MechprofileState();
}

class _MechprofileState extends State<Mechprofile> {
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
                child: CircleAvatar(
                  radius: 75.r,
                  backgroundColor: Color(0xFFE7F0FF),
                  child: Image.asset('assets/Ellipse4.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                        top: 20, left: 31, right: 31, bottom: 35)
                    .r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Name',
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
                      ' Username',
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
                          hintText: 'Username',
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
                      ' Phone number',
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
                          hintText: '0000000',
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
                      'Email ',
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
                      height: 11.h,
                    ),
                    Text(
                      ' work experience',
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
                          hintText: 'Enter your experience',
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
                      ' work shop name',
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
                          hintText: 'Enter your shop name ',
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
                      '  your location ',
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
                          hintText: ' Enter your location ',
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
                      height: 40.h,
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
                                'SUBMIT',
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
