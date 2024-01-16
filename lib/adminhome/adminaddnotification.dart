import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_repair/bottomnav.dart';

class Addnotification extends StatefulWidget {
  const Addnotification({super.key});

  @override
  State<Addnotification> createState() => _AddnotificationState();
}

class _AddnotificationState extends State<Addnotification> {
  static final formKey = GlobalKey<FormState>();
  final matter = TextEditingController();
  final content = TextEditingController();
  final date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    Future<void> addnotification() async {
      await FirebaseFirestore.instance.collection('notification').add({
        'heading': matter.text,
        'content': content.text,
        'time': time.format(context),
        'date': DateFormat('dd/mm/yy').format(date)
      }).then((value) =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Bottomnav(index: 2);
          })));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFE7F0FF),
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10).r,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
            ),
            SizedBox(
              height: 55.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Matter',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      height: 0.h,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    controller: matter,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter matter';
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Matter',
                      hintStyle: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0.h,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 19, horizontal: 17).r,
                    ),
                  ),
                  SizedBox(
                    height: 46.h,
                  ),
                  SizedBox(
                    height: 300.h,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 20,
                      controller: content,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter content';
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Content....',
                        hintStyle: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          height: 0.h,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 19, horizontal: 17)
                                .r,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 58.h,
                  ),
                  Center(
                    child: SizedBox(
                      height: 50.h,
                      width: 200.w,
                      child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              addnotification();
                            }
                          },
                          child: Text(
                            'SUBMIT',
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
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
