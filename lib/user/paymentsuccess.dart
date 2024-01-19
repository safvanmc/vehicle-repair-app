import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_repair/user/userrequest.dart';

class Paymentsuccess extends StatefulWidget {
  const Paymentsuccess({super.key});

  @override
  State<Paymentsuccess> createState() => _PaymentsuccessState();
}

class _PaymentsuccessState extends State<Paymentsuccess> {
  var ur;
  getdata() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    ur = spref.getString('url');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 110),
              child: Center(
                child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.r,
                        backgroundImage: AssetImage('assets/check 1.png'),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        'successful',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ]),
              ),
            ),
            Positioned(
              left: 70.w,
              right: 70.w,
              bottom: 110.h,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Userrequest(url: ur)));
                },
                child: Container(
                  width: 249.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2357D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Back to home page ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
