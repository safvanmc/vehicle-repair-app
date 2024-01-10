import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/adminhome/adminhome.dart';
import 'package:vehicle_repair/adminhome/adminlogin.dart';
import 'package:vehicle_repair/adminhome/adminnotification.dart';
import 'package:vehicle_repair/adminhome/adminpayment.dart';
import 'package:vehicle_repair/adminhome/adminmech.dart';
import 'package:vehicle_repair/adminhome/adminuser.dart';
import 'package:vehicle_repair/adminhome/notifylist.dart';
import 'package:vehicle_repair/bottomnav.dart';
import 'package:vehicle_repair/mech/Bottomnavmech.dart';
import 'package:vehicle_repair/mech/Mechlogin.dart';
import 'package:vehicle_repair/mech/Signupmech.dart';
import 'package:vehicle_repair/mech/editprofile.dart';
import 'package:vehicle_repair/mech/mechacceptandreject.dart';
import 'package:vehicle_repair/mech/mechnotification.dart';
import 'package:vehicle_repair/mech/mechprofile.dart';
import 'package:vehicle_repair/mech/mechrating.dart';
import 'package:vehicle_repair/mech/mechservice2.dart';
import 'package:vehicle_repair/mech/mechservices.dart';
import 'package:vehicle_repair/mech/mechstatus.dart';
import 'package:vehicle_repair/user/mechfailedpage.dart';
import 'package:vehicle_repair/user/mechpaymentpage.dart';
import 'package:vehicle_repair/user/paymentsuccess.dart';
import 'package:vehicle_repair/user/userlogin.dart';
import 'package:vehicle_repair/user/usermechdetails.dart';
import 'package:vehicle_repair/user/usermechlist.dart';
import 'package:vehicle_repair/user/userprofile.dart';
import 'package:vehicle_repair/user/userrating.dart';
import 'package:vehicle_repair/user/userrequest.dart';
import 'package:vehicle_repair/userormech.dart';
import 'package:vehicle_repair/firebase_options.dart';
import 'package:vehicle_repair/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
          ),
          debugShowCheckedModeBanner: false,
          home: Splash()),
    );
  }
}
