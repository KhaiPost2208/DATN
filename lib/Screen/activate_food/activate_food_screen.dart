import 'package:flutter/material.dart';


class MenuOrder extends StatelessWidget {
  const MenuOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text("Các món khách đã đặt: ", style: TextStyle( fontSize: 22),),
          )
        ],
      ),

    );
  }
}
