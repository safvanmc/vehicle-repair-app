import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/adminhome/adminaddnotification.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      floatingActionButton: Container(
        height: 70.h,
        width: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xBF2357D9), blurRadius: 5, spreadRadius: 1)
            ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Addnotification(),
                ));
          },
          backgroundColor: Colors.white,
          elevation: 5,
          shape: CircleBorder(
              side: BorderSide(
            color: Colors.blue,
          )),
          child: Image.asset('assets/plus.png'),
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 13).r,
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 25.r, right: 10.r),
              tileColor: Colors.white,
              title: Text('Heading',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    height: 0.h,
                  )),
              subtitle: Text(
                  'Lorem ipsum is a placeholder text commonly\n used to demonstrate the visual form of a\n document or a typeface without relying . . . . .'),
            ),
          );
        },
      ),
    );
  }
}
