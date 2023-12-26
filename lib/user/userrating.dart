import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Userrating extends StatefulWidget {
  const Userrating({super.key});

  @override
  State<Userrating> createState() => _UserratingState();
}

class _UserratingState extends State<Userrating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCEE2FF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text('Your rating',
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
          height: 10.h,
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
                borderRadius: BorderRadius.circular(12),
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
          height: 15.h,
        ),
        Center(
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            itemSize: 20.sp,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        SizedBox(
          height: 55.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45).r,
          // padding: const EdgeInsets.only(left: 45, right: 45).r,
          child: Text(
            'Add rating ',
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
          height: 23.h,
        ),
        Center(
          child: RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            itemSize: 50.sp,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => Icon(
              Icons.star_border_rounded,
              color: Colors.black,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        SizedBox(height: 125.h),
        Center(
          child: Container(
            width: 249.w,
            height: 50.h,
            decoration: ShapeDecoration(
              color: Color(0xFF2357D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
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
      ]),
    );
  }
}
