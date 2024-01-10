import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('mech').get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error:${snapshot.error}'));
          }
          final mechuser = snapshot.data?.docs ?? [];

          return ListView.builder(
            shrinkWrap: true,
            itemCount: mechuser.length,
            itemBuilder: (context, index) {
              final name = mechuser[index]['username'];
              final phone = mechuser[index]['phone number'];
              final email = mechuser[index]['email'];
              final shope = mechuser[index]['shopename'];
              final experience = mechuser[index]['experience'];
              final password = mechuser[index]['password'];
              return Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ).r,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Adminuser(id: mechuser[index].id),
                        ));
                  },
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Image.asset('assets/man.png'),
                    title: Text(name),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(phone),
                          Text(experience)
                        ]),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
