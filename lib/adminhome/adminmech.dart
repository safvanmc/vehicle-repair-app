import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Adminuser extends StatefulWidget {
  const Adminuser({super.key});

  @override
  State<Adminuser> createState() => _AdminuserState();
}

class _AdminuserState extends State<Adminuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFE7F0FF),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ).r,
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r)),
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
                      child: Image.asset('assets/rectangle.png'),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 47.h,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          itemSize: 20.sp,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 31, right: 31, bottom: 35)
                            .r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 56.h,
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
                              contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15)
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
                              contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15)
                                  .r,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text(
                          ' email adders',
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
                              hintText: 'Example@email.com',
                              hintStyle: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0.h,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15)
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
                              hintText: 'experience',
                              hintStyle: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0.h,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15)
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
                              hintText: ' shop name ',
                              hintStyle: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0.h,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15)
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
                              contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15)
                                  .r,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 61.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50.h,
                                  // width: 142.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF73ABFF)),
                                  child: Center(
                                    child: Text(
                                      'Accept',
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
                            ),
                            SizedBox(
                              width: 14.w,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50.h,
                                  // width: 142.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFFFF9E9D)),
                                  child: Center(
                                    child: Text(
                                      'Reject',
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
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        )),
      ),
    );
  }
}
