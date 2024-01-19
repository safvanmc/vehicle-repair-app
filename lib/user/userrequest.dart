import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/user/usermechlist.dart';
import 'package:vehicle_repair/user/usermechlist2.dart';
import 'package:vehicle_repair/user/usernotify.dart';
import 'package:vehicle_repair/user/userprofile.dart';

class Userrequest extends StatefulWidget {
  Userrequest({
    super.key,
    required this.url,
  });
  String url;

  @override
  State<Userrequest> createState() => _UserrequestState();
}

class _UserrequestState extends State<Userrequest> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCEE2FF),
      resizeToAvoidBottomInset: false,
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              color: Color(0xFFCEE2FF),
              child: Padding(
                padding: const EdgeInsets.only(
                        left: 35, right: 25, top: 5, bottom: 5)
                    .r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Userprofile(),
                            ));
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(widget.url),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    SizedBox(
                        height: 30,
                        width: 211,
                        child: SearchBar(
                          leading: Icon(Icons.search),
                          hintText: 'search',
                          hintStyle: MaterialStatePropertyAll(TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r))),
                          elevation: MaterialStatePropertyAll(0),
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Usernotify(),
                              ));
                        },
                        icon: SizedBox(
                          height: 30.h,
                          width: 30.w,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.amber,
                            // fill: 0.0,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(children: [
                      Expanded(
                        child: TabBarView(children: [
                          Usermechlist2(),
                          Usermechlist(),
                        ]),
                      ),
                    ]),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 50.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xFFCEE2FF)),
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorWeight: 0,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xFF2357D9),
                          ),
                          tabs: [
                            Tab(
                                child: Text(
                              'Mechanic',
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
                              'Request',
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
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
