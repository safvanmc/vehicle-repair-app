import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vehicle_repair/user/userlogin.dart';
import 'package:vehicle_repair/user/userrequest.dart';
import 'package:path/path.dart';

class SetProfile extends StatefulWidget {
  SetProfile({
    super.key,
    required this.name,
    required this.password,
    required this.email,
    required this.phonenumber,
  });
  String name;
  String password;
  String email;
  String phonenumber;

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  XFile? pickedFile;
  File? image;
  var imageUrl;
  pickImage() async {
    final ImagePicker _picker = ImagePicker();
    try {
      pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          image = File(pickedFile!.path);
        });
        await uploadImage();
      }
    } catch (e) {
      print('Error picking image:${e}');
    }
  }

  uploadImage() async {
    try {
      if (image != null) {
        String name = basename(pickedFile!.path);
        Reference storageReference =
            FirebaseStorage.instance.ref().child('profile/$name');
        await storageReference.putFile(File(image!.path));

        // get the dowloadnurl  //
        imageUrl = await storageReference.getDownloadURL();
      }
    } catch (e) {
      print('Error uploading image:$e');
    }
    FirebaseFirestore.instance.collection('users').add({
      'name': widget.name,
      'password': widget.password,
      'email': widget.email,
      'phone number': widget.phonenumber,
      'status': 0,
      'url': imageUrl
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Choose profile picture'),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(6.r)),
                  child: image == null
                      ? IconButton(
                          onPressed: () {
                            pickImage();
                          },
                          icon: Icon(Icons.camera))
                      : Image.file(image!)),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 50.h,
                width: 200.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2357D9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Userlogin(),
                          ));
                    },
                    child: Text('Save')),
              )
            ]),
      ),
    );
  }
}
