import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({Key? key}) : super(key: key);

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  var username = TextEditingController();
  var phoneNumber = TextEditingController();
  var email = TextEditingController();

  @override
  void initState() {
    getData();
    super.initState();
  }

  var un = '';
  var em = '';
  var pn = '';
  var id = '';
  var ur;

  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      un = spref.getString('username').toString();
      em = spref.getString('email').toString();
      pn = spref.getString('phone number').toString();
      id = spref.getString('userid').toString();
      ur = spref.getString('url');

      username.text = un ?? '';
      phoneNumber.text = pn ?? '';
      email.text = em ?? '';
      // ur=
    });
    print(ur);
  }

  updateData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    spref.setString('username', username.text);
    spref.setString('phone number', phoneNumber.text);
    spref.setString('email', email.text);

    FirebaseFirestore.instance.collection('users').doc(id).update({
      'name': username.text,
      'phone number': phoneNumber.text,
      'email': email.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ).r,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      ur == null
                          ? CircleAvatar(
                              backgroundColor: Color(0xFFE7F0FF),
                              radius: 50.r,
                            )
                          : CircleAvatar(
                              backgroundImage: NetworkImage(ur.toString()),
                              radius: 50.r,
                            ),
                      SizedBox(height: 10.h),
                      Text(un, style: TextStyle(fontSize: 20.sp)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 58,
                    left: 31,
                    right: 31,
                    bottom: 43,
                  ).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your Name',
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
                          controller: username,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              height: 0.h,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 15,
                            ).r,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Enter your Phone number',
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
                          controller: phoneNumber,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              height: 0.h,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 15,
                            ).r,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Enter your email ',
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
                          controller: email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              height: 0.h,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 15,
                            ).r,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 240.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              updateData();
                            },
                            child: Container(
                              height: 50.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Color(0xFF2357D9),
                              ),
                              child: Center(
                                child: Text(
                                  'Done',
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
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
