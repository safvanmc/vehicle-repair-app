import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/user/usermechlist.dart';
import 'package:vehicle_repair/user/userrequest.dart';
import 'package:vehicle_repair/user/usersignup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Userlogin extends StatefulWidget {
  const Userlogin({super.key});

  @override
  State<Userlogin> createState() => _UserloginState();
}

class _UserloginState extends State<Userlogin> {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFCEE2FF),
      body: SafeArea(
          child: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.only(top: 61, left: 51, right: 51).r,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                      height: 140.h,
                      width: 140.w,
                      child: Image.asset('assets/tow 1.png')),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.h,
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
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0.h,
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsets.only(left: 19, top: 14.5, bottom: 14.5).r,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none)),
                ),
                SizedBox(
                  height: 39.51.h,
                ),
                Text(
                  'Enter Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0.h,
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsets.only(left: 19, top: 14.5, bottom: 14.5).r,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none)),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      'Forgot password ? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: SizedBox(
                    height: 50.h,
                    width: 200.w,
                    child: ElevatedButton(
                        onPressed: () {
                          getData();
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.h,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF2357D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r)))),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do you have account ? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Usersignup(),
                            ));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Usersignup(),
                              ));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0xFF2357D9),
                            fontSize: 13.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  final formkey = GlobalKey<FormState>();
  var userId;
  var name;
  var email;
  var phone;

  getData() async {
    if (formkey.currentState?.validate() ?? false) {
      final QuerySnapshot<Map<String, dynamic>> mechSnapshot =
          await FirebaseFirestore.instance
              .collection('users')
              .where('name', isEqualTo: username.text)
              .where('password', isEqualTo: password.text)
              .where('status', isEqualTo: 1)
              .get();

      if (mechSnapshot.docs.isNotEmpty) {
        setState(() {
          userId = mechSnapshot.docs[0].id;
          name = mechSnapshot.docs[0]['name'];
          email = mechSnapshot.docs[0]['email'];
          phone = mechSnapshot.docs[0]['phone number'];
        });
        print('---------------$email');

        SharedPreferences spref = await SharedPreferences.getInstance();
        spref.setString('userid', userId);
        spref.setString('username', name);
        spref.setString('email', email);
        spref.setString('phone number', phone);

        var un = spref.getString('username');
        print('---------------$un');

        var em = spref.getString('email');
        var pn = spref.getString('phone number');

        Fluttertoast.showToast(msg: 'Login Successfully as user');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Userrequest(),
            ));
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login failed'),
            content: Text('Invalid username or password.please try again'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text('ok'))
            ],
          ),
        );
      }
    }
  }
}
