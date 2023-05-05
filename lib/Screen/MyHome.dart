import 'package:appdatn/Screen/CategoryWidget.dart';
import 'package:appdatn/Screen/DrawerScreen.dart';
import 'package:appdatn/Screen/MenuBanhMi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../HomePage/CartPage.dart';
import '../HomePage/ScreenLogin.dart';
import 'AppBarWidget.dart';
import 'Drink.dart';
import 'Menu.dart';
import 'Soban.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Bạn đang muốn dùng gi?',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Món ăn',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          CategoryWidget(),
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Nước Uống',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    MenuDrink(),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Gọi Thêm',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    MenuPlus(),
                  ],
                ),
              ],
            ),
          ),
          // MenuPlus(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Ưa thích',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          TableNumber(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Ưa thích',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          MenuBanhMi(),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
            // Get.to(CartPage());
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
