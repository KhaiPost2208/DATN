import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'CreateAccount.dart';
import 'package:get/get.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _ShowPass = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Container(
                  child: Column(
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image.asset('assets/logo.png',
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      autofocus: true,
                      decoration: const InputDecoration(
                        labelText: ("Tên Đăng Nhập"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        TextField(
                          controller: passwordController,
                          obscureText: !_ShowPass,
                          decoration: const InputDecoration(
                            labelText: ("Mật Khẩu"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: onShow,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                            ),
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                alignment: Alignment.centerRight,
                child: Column(
                  children: [Text("Quên mật khẩu ?")],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim());
                      },
                      child: Text("Đăng Nhập"),
                    ),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

                  },
                  child: const Text("New user? Tạo tài khoản",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.pinkAccent),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void onShow() {
    setState(() {
      _ShowPass = !_ShowPass;
    });
  }
  void onSign() {
  }
}

