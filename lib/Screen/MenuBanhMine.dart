import 'package:flutter/material.dart';


class MenuBanhMi1 extends StatefulWidget {
  const MenuBanhMi1({Key? key}) : super(key: key);

  @override
  State<MenuBanhMi1> createState() => _MenuBanhMi1State();
}

class _MenuBanhMi1State extends State<MenuBanhMi1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: ListTile(
            title: Text('Bánh Mì'),

          ),
        )

      ],
    );
  }
}
