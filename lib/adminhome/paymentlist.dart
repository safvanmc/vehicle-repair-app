import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Paymentlist extends StatefulWidget {
  const Paymentlist({super.key});

  @override
  State<Paymentlist> createState() => _PaymentlistState();
}

class _PaymentlistState extends State<Paymentlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 13).r,
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 25.r, right: 10.r),
              tileColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(' Name ',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        height: 0.h,
                      )),
                  Text('10/11/2023',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 0.h,
                      )),
                ],
              ),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Text('₹ 5455/-'),
                    Text('Service'),
                    Text('Mechanic name')
                  ]),
            ),
          );
        },
      ),
    );
  }
}
