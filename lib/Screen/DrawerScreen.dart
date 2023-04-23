import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../HomePage/CartPage.dart';
import '../HomePage/CreateAccount.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black45,
                ),
                accountName: Text("Nhà Hàng"),
                accountEmail: Text("Nguyendangkhai.telecom@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/soban.jpg'),
                ),
              ),
          ),
          ZoomTapAnimation(
            onTap: () {
            },
            child: const ListTile(
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text('Trang Chủ', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
          ZoomTapAnimation(
            onTap: () {
              Get.to(CartPage());
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.cart,
              ),
              title: Text('Món đã đặt', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
          ZoomTapAnimation(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: const ListTile(
              leading: Icon(
                CupertinoIcons.arrow_left,
              ),
              title: Text('Đăng xuất', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
