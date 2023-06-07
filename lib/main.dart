import 'package:appdatn/presentations/food_detail/food_detail_screen.dart';
import 'package:appdatn/presentations/food_list/food_list_screen.dart';
import 'package:appdatn/presentations/food_order/food_order_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'HomePage/MyHomePage.dart';
import 'Screen/MyHome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // primarySwatch: Colors.pink,
      ),
      // routes: {
      //   "/" : (context) => HomePage(),
      // },
      // home: const AppBarWidget(),
      // home: StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return HomePage();
      //     } else {
      //       return MyHomePage();
      //     }
      //   },
      // ),
      home: HomePage(),
    );
  }
}
