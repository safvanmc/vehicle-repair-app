import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/user/usermechdetails.dart';

class Usermechlist2 extends StatefulWidget {
  const Usermechlist2({super.key});

  @override
  State<Usermechlist2> createState() => _Usermechlist2State();
}

class _Usermechlist2State extends State<Usermechlist2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 31, left: 34, right: 34).r,
          child: Column(children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserMechdetails(),
                    ));
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, top: 10, bottom: 11, right: 11).r,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFFCEE2FF)),
                child: Row(children: [
                  Column(
                    children: [
                      Image.asset('assets/bussinessman.png'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '2+ year experience ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Fuel leaking ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Container(
                        width: 90.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color(0xFF49CD6E)),
                        child: Center(
                          child: Text(
                            'Available',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.r,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 10, bottom: 11, right: 11).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFCEE2FF)),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/bussinessman.png'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '1+ year experience ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Battery check',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Container(
                          width: 90.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Color(0xFFCD4949)),
                          child: Center(
                            child: Text(
                              ' Unavailable',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.r,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 10, bottom: 11, right: 11).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFCEE2FF)),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/bussinessman.png'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '1 year experience ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Brake pad replacement',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Container(
                          width: 90.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Color(0xFFCD4949)),
                          child: Center(
                            child: Text(
                              'Available',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.r,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 10, bottom: 11, right: 11).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFCEE2FF)),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/bussinessman.png'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '1 year experience ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Tyre changing and repair',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Container(
                          width: 90.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Color(0xFF49CD6E)),
                          child: Center(
                            child: Text(
                              'Available',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.r,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
