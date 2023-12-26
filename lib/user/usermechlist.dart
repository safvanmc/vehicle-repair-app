import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/user/mechpaymentpage.dart';

class Usermechlist extends StatefulWidget {
  const Usermechlist({super.key});

  @override
  State<Usermechlist> createState() => _UsermechlistState();
}

class _UsermechlistState extends State<Usermechlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 31, left: 34, right: 34).r,
          child: Column(children: [
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 14, bottom: 14, right: 31).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFCEE2FF)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
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
                          'Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Time ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Fuel leaking',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 71.w,
                    // ),
                    Container(
                      width: 110.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Color(0xFF49CD6E)),
                      child: Center(
                        child: Text(
                          'Approved',
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
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mechpay(),
                    ));
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 14, bottom: 14, right: 31).r,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFFCEE2FF)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
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
                            'Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Time ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'change oil & filter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 39.w,
                      // ),
                      Container(
                        width: 110.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color(0xFF49CD6E)),
                        child: Center(
                          child: Text(
                            'Pay',
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
                    ]),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 14, bottom: 25, right: 31).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFCEE2FF)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Date',
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
                          'Heating AC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 71.w,
                    ),
                    Container(
                      width: 110.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Color(0xFFCD4949)),
                      child: Center(
                        child: Text(
                          'Failed',
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
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 14, bottom: 25, right: 31).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFCEE2FF)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Date',
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
                          'Fuel leaking',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 71.w,
                    ),
                    Container(
                      width: 110.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Color(0xFFCD4949)),
                      child: Center(
                        child: Text(
                          'Rejected',
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
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
