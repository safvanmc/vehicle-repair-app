import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcceptandReject extends StatefulWidget {
  const AcceptandReject({super.key});

  @override
  State<AcceptandReject> createState() => _AcceptandRejectState();
}

class _AcceptandRejectState extends State<AcceptandReject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 28, top: 108).r,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 134, left: 31, bottom: 60, right: 20)
                          .r,
                  height: 500.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xFFCEE2FF)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                              // alignment: WrapAlignment.spaceBetween,
                              direction: Axis.vertical,
                              runSpacing: 20,
                              spacing: 20,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Problem ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  'Place',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  'Time',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  'Contact number ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ]),
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 20,

                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ': Fuel leaking ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                ': Kozhikode beach road  ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              Text(
                                ': 12/05/2023',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              Text(
                                ': 10:00 am',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              Text(
                                ': 00000000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 95.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Color(0xFF49CD6E)),
                              child: Center(
                                child: Text(
                                  'Accept',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Color(0xFFCD4949)),
                              child: Center(
                                child: Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
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
                ),
              ),
            ],
          ),
          Positioned(
            top: 140.h,
            child: Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                spacing: 15.r,
                children: [
                  SizedBox(
                      height: 80.h,
                      width: 80.h,
                      child: Image.asset(
                        'assets/Ellipse 11.png',
                        fit: BoxFit.fill,
                      )),
                  Text(
                    textAlign: TextAlign.center,
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
            ),
          ),
        ],
      )),
    );
  }
}
