import 'package:appdatn/Screen/HomePage/CategoryWidget.dart';
import 'package:appdatn/Screen/MenuFood/MenuBanhMi.dart';
import 'package:appdatn/Screen/TabbarView/Tabbar.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../HomePage/CartPage.dart';
import '../InformationFood/Information.dart';
import '../MenuFood/MenuBanhMine.dart';
import '../MenuFood/MenuPho.dart';
import '../TabbarView/TabbarBanhMi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final tabs = [
    ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
          padding: const EdgeInsets.only(top: 6, left: 10),
          child: Text(
            'Món ăn',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        CategoryWidget(),
        // MenuPlus(),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 10),
          child: Text(
            'Ẩm thực Việt Nam',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Information(),
        Image.asset('assets/thaytam.png', height: 320,),
      ],
    ),
    HomeTopTabs(),
    // ListView(
    //   children: [
    //     MainHome(),
    //     // Padding(
    //     //   padding: const EdgeInsets.only(top: 20, left: 10),
    //     //   child: Text(
    //     //     'Món ăn',
    //     //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    //     //   ),
    //     // ),
    //   ],
    // ),
    Container(
      child: Center(
        child: Text('Hoạt Động'),
      ),
    ),
    Center(
      child: Image.asset(
        'assets/bidv.jpg',
        width: 700,
        height: 700,
      ),
    ),
    Center(
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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            label: 'Đặt Món',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Hoạt Động',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Thanh Toán',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bars),
            label: 'Khác',
          ),
        ],
        currentIndex: _selectedIndex,
        //New
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: tabs[_selectedIndex],
    );
  }
}
