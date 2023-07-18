import 'package:appdatn/Screen/food_payment/food_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../food_table/food_table_screen.dart';
import 'payment_controller.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});

  final controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Image.asset(
              'assets/bidv.jpg',
            ),
          ),
          Obx(
            () => Visibility(
              visible: controller.totalPayment.value > 0,
              child: Text(
                controller.getTotalPayment(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ZoomTapAnimation(
            onTap: () async {
              var tableName = await showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 0.7,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: FoodTableScreen(),
                      ),
                    );
                  });

              var totalPayment = await Get.to(
                () => FoodPaymentScreen(),
                arguments: {
                  'TableName': tableName,
                },
              );

              controller.totalPayment.value = totalPayment;
            },
            child: Container(
              height: 40,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[900],
              ),
              child: Text(
                'Số Bàn',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
