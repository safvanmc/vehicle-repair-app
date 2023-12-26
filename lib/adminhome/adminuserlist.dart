import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/adminmech.dart';
import 'package:vehicle_repair/adminhome/adminuser.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
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
                      builder: (context) => Adminuser2(),
                    ));
              },
              child: ListTile(
                tileColor: Colors.white,
                leading: Image.asset('assets/man.png'),
                title: Text('Name'),
                subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Location'),
                      Text('Mobile Number'),
                      Text('Email')
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
