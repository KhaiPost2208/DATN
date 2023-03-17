import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
  class LoginScreen extends StatelessWidget {
    const LoginScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Text('Đăng Xuất')),
            ],
          ),

        ),
      );
    }
  }
