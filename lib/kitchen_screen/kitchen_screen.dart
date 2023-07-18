import 'package:flutter/material.dart';

class Kitchen extends StatelessWidget {
  const Kitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              SizedBox(width: 50),
              Text('Món Khách Đặt'),
            ],
          ),
        ),
        // primary: false,
      ),
    );
  }
}

