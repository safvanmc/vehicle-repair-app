import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('users').get(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }
            final user = snapshot.data?.docs ?? [];

            return ListView.builder(
              shrinkWrap: true,
              itemCount: user.length,
              itemBuilder: (context, index) {
                final name = user[index]['name'];
                final phone = user[index]['phone number'];
                final email = user[index]['email'];

                final location;
                if (user.contains('location')) {
                  location = user[index]['location'];
                } else {
                  location = 'unavailable';
                }

                ;
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
                                Adminuser2(id: user[index].id),
                          ));
                    },
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset('assets/man.png'),
                      title: Text(name),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(location), Text(phone), Text(email)]),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
