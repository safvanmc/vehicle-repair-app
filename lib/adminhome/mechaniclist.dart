import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/adminmech.dart';

class Mechaniclist extends StatefulWidget {
  const Mechaniclist({super.key});

  @override
  State<Mechaniclist> createState() => _MechaniclistState();
}

class _MechaniclistState extends State<Mechaniclist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ).r,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Adminuser(),
                    ));
              },
              child: ListTile(
                tileColor: Colors.white,
                leading: Image.asset('assets/man.png'),
                title: Text('Name'),
                subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 9.h,
                      ),
                      Text('Mobile Number'),
                      Text('Service')
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
