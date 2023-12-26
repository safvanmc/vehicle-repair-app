import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMechdetails extends StatefulWidget {
  const UserMechdetails({super.key});

  @override
  State<UserMechdetails> createState() => _UserMechdetailsState();
}

class _UserMechdetailsState extends State<UserMechdetails> {
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
        title: Text('Needed service ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            )),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: SizedBox(
            height: 150.h,
            width: 150.w,
            child: Image.asset(
              'assets/bussinessman2.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: Text(
            'Name ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        Center(
          child: Text(
            'contact number ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: Text(
            '2+ year experience ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: Container(
            width: 90.w,
            height: 24.h,
            decoration: ShapeDecoration(
              color: Color(0xFF49CD6E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Center(
              child: Text(
                'Available',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 14.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add needed service ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 260.w,
                    height: 38.h,
                    padding: EdgeInsets.all(10.r),
                    decoration: ShapeDecoration(
                      color: Color(0xFFCEE2FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Icon(CupertinoIcons.chevron_down)
                        ]),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle,
                        color: Colors.black,
                      ))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 260.w,
                height: 38.h,
                padding: EdgeInsets.all(10.r),
                decoration: ShapeDecoration(
                  color: Color(0xFFCEE2FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                'Place ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 300.w,
                height: 70.h,
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10).r,
                decoration: ShapeDecoration(
                  color: Color(0xFFCEE2FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Text(
                  'Beach road Calicut ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 53.h,
        ),
        Center(
          child: Container(
            width: 249.w,
            height: 50.h,
            decoration: ShapeDecoration(
              color: Color(0xFF2357D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Center(
                child: Text(
              'Request',
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
      ]),
    );
  }
}
