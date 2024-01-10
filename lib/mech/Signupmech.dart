import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/mech/mechservices.dart';

class MechSignup extends StatefulWidget {
  const MechSignup({super.key});

  @override
  State<MechSignup> createState() => _MechSignupState();
}

class _MechSignupState extends State<MechSignup> {
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final experience = TextEditingController();
  final shope = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  Future<void> uploadmech() async {
    await FirebaseFirestore.instance.collection('mech').add({
      'username': name.text,
      'phone number': phone.text,
      "email": email.text,
      'experience': experience.text,
      'shopename': shope.text,
      'password': password.text,
      'status': 0
    }).then((value) => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return MechServices();
          },
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                          top: 40, left: 31, right: 31, bottom: 35)
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
                          hintText: 'Enter your phone number',
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
                      TextFormField(
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
                          hintText: 'Enter your email',
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
                        'Enter your work experience',
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
                        controller: experience,
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
                          hintText: 'Enter your work experience',
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
                        'Enter your work shop name',
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
                        controller: shope,
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
                          hintText: 'Enter your shope name',
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
                      TextFormField(
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
                          hintText: 'Enter your password',
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
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              if (formkey.currentState!.validate()) {
                                uploadmech();
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
