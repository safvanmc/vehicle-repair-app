import 'package:cloud_firestore/cloud_firestore.dart';
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
  // getdata() async {
  //   await FirebaseFirestore.instance.collection('notification').get();
  // }

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
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('notification').get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          final Notification = snapshot.data?.docs ?? [];
          return ListView.builder(
            itemCount: Notification.length,
            itemBuilder: (context, index) {
              final matter = Notification[index]['heading'];
              final content = Notification[index]['content'];
              final date = Notification[index]['date'];
              final time = Notification[index]['time'];

              return Padding(
                padding: const EdgeInsets.only(top: 13).r,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 25.r, right: 10.r),
                  tileColor: Colors.white,
                  title: Text(matter,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        height: 0.h,
                      )),
                  subtitle: Text(content),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
