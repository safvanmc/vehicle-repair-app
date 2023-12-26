import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechstatus extends StatefulWidget {
  const Mechstatus({super.key});

  @override
  State<Mechstatus> createState() => _MechstatusState();
}

class _MechstatusState extends State<Mechstatus> {
  String? selecteditem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
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
            padding: const EdgeInsets.only(
              left: 45,
              right: 23,
            ).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 13, bottom: 8, left: 10).r,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xFFCEE2FF)),
                  child: Wrap(
                    spacing: 53,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          SizedBox(
                            height: 7.h,
                          ),
                          SizedBox(
                            height: 60.h,
                            width: 60.w,
                            child: Image.asset(
                              'assets/Ellipse 11.png',
                              fit: BoxFit.fill,
                            ),
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
                            'Fuel leaking ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            'Date  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Time  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Place  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                Text(
                  'Add status ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                      value: "male",
                      groupValue: selecteditem,
                      onChanged: (value) {
                        setState(() {
                          selecteditem = value.toString();
                        });
                      },
                    ),
                    Text(
                      'Completed ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Radio(
                      value: "female",
                      groupValue: selecteditem,
                      onChanged: (value) {
                        setState(() {
                          selecteditem = value.toString();
                        });
                      },
                    ),
                    Text(
                      'Not Completed ',
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
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  'Amount ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Container(
                    height: 43.h,
                    width: 219.w,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2.w),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Text(
                      '₹   2000/-',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                SizedBox(
                  height: 106.h,
                ),
                Center(
                  child: Container(
                    height: 50.h,
                    width: 250.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2357D9),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Submit ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        )),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
