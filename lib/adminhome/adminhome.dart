import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/adminuserlist.dart';
import 'package:vehicle_repair/adminhome/mechaniclist.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color(0xFFE7F0FF),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/girl1.jpeg'),
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10).r,
                child: Container(
                  height: 50.h,
                  // width: 330.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xFF2357D9),
                    ),
                    tabs: [
                      Tab(
                          child: Text(
                        'User',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.h,
                        ),
                      )),
                      Tab(
                          child: Text(
                        'Mechanic',
                        style: TextStyle(
                          // color: Colors.black,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.h,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Expanded(
                child: TabBarView(children: [
                  UserList(),
                  Mechaniclist(),
                ]),
              )
            ],
          ),
        )),
      ),
    );
  }
}
