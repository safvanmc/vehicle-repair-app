import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechrating extends StatefulWidget {
  const Mechrating({super.key});

  @override
  State<Mechrating> createState() => _MechratingState();
}

class _MechratingState extends State<Mechrating> {
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
        title: Text('Rating',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28).r,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26).r,
            child: Text(
              'The rating given to you',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Container(
            // height: 290.h,
            padding: EdgeInsets.only(top: 7, left: 25, right: 36, bottom: 25).r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xFFCEE2FF)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: Column(
                      children: [
                        Image.asset('assets/Ellipse 11.png'),
                        SizedBox(
                          height: 10.h,
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
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Engine work',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
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
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Time',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Place',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
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
                        'Rating ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 7).r,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          itemSize: 12.sp,
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
                      Text(
                        '4/5',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )
                    ],
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
