import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechservice2 extends StatefulWidget {
  const Mechservice2({super.key});

  @override
  State<Mechservice2> createState() => _Mechservice2State();
}

class _Mechservice2State extends State<Mechservice2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 60.h,
        width: 60.h,
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(90.r)),
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    title: Text(
                      'Add service ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    backgroundColor: Color(0xFFCEE2FF),
                    content: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: TextFormField()),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(top: 91, bottom: 22).r,
                        child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2357D9)),
                              onPressed: () {
                                Navigator.of(context)..pop();
                              },
                              child: Text('Add')),
                        ),
                      )
                    ]),
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30.sp,
            )),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFCEE2FF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text('Service',
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
        padding: const EdgeInsets.only(top: 31, left: 28, right: 28).r,
        child: Column(children: [
          Container(
            // height: 290.h,
            padding:
                EdgeInsets.only(top: 30, left: 25, right: 22, bottom: 26).r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xFFCEE2FF)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30).r,
                      child: Text(
                        'Tyre puncture service',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10).r,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.delete_solid)),
                    ),
                  ],
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30).r,
                      child: Text(
                        'Engine service',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10).r,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.delete_solid)),
                    ),
                  ],
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30).r,
                      child: Text(
                        'A/c service',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10).r,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.delete_solid)),
                    ),
                  ],
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30).r,
                      child: Text(
                        'Electric service',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10).r,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.delete_solid)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
