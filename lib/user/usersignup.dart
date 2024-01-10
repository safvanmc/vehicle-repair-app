import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/user/usermechlist.dart';
import 'package:vehicle_repair/user/userrequest.dart';

class Usersignup extends StatefulWidget {
  const Usersignup({super.key});

  @override
  State<Usersignup> createState() => _UsersignupState();
}

class _UsersignupState extends State<Usersignup> {
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  Future<void> uploadData() async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': name.text,
      'password': password.text,
      'email': email.text,
      'phone number': phone.text,
      'status': 0,
    }).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Userrequest(),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFCEE2FF),
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ).r,
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
                SizedBox(
                  height: 11.h,
                ),
                Center(
                  child: SizedBox(
                      height: 140.h,
                      width: 140.w,
                      child: Image.asset('assets/tow 1.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                          top: 40, left: 31, right: 31, bottom: 40)
                      .r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'SIGN UP ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 49.h,
                      ),
                      Text(
                        'Enter Username',
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
                      TextFormField(
                        controller: name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Empty field';
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.r,
                                ),
                              ),
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 0.h,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                                  .r,
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Enter Phone number',
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
                      TextFormField(
                        controller: phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Empty feild';
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.r,
                                ),
                              ),
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          hintText: 'Enter phone number',
                          hintStyle: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 0.h,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                                  .r,
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Enter your email',
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
                      Center(
                        child: TextFormField(
                          controller: email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Empty field';
                            }
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10.r,
                                  ),
                                ),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            hintText: 'Enter email',
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
                        'Enter your Password',
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
                      Center(
                        child: TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Empty field';
                            }
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10.r,
                                  ),
                                ),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            hintText: ' Enter your Password ',
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
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              if (formkey.currentState!.validate()) {
                                uploadData();
                              }
                            },
                            child: Container(
                              height: 50.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Color(0xFF2357D9)),
                              child: Center(
                                child: Text(
                                  'SIGN UP',
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
          )),
        ),
      ),
    );
  }
}
