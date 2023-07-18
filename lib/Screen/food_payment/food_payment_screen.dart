import 'package:appdatn/entity/food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'food_payment_controller.dart';

class FoodPaymentScreen extends StatelessWidget {
  final controller = Get.put(FoodPaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thanh Toán'),
      ),
      body: Container(
        child: Stack(
          children: [
            Obx(
              () => Visibility(
                visible: controller.listFood.value.isNotEmpty,
                child: Column(
                  children: [
                    Expanded(child: _buildListFood()),
                    _buildTotal(),
                    _buildPayment(),
                  ],
                ),
              ),
            ),
            Obx(
              () => Container(
                alignment: Alignment.center,
                child: Visibility(
                    visible: controller.isShowNoPayment.value,
                    child: Text(
                      'Chưa Đặt Món',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )),
              ),
            ),
            Obx(
              () => Visibility(
                visible: controller.isLoading.value,
                child: Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
            Obx(
              () => Visibility(
                visible: controller.isLoading.value,
                child: Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListFood() {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: controller.listFood.value.length,
        itemBuilder: (context, index) {
          return _buildItemFood(controller.listFood.value[index]);
        },
      ),
    );
  }

  Widget _buildItemFood(Food food) {
    var totalPrice = (food.price ?? 0) * (food.quantity ?? 0);

    var currencyFormatter = NumberFormat('#,###', 'ID');
    var totalFormat = currencyFormatter.format(totalPrice);

    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            '(${food.quantity.toString()}x)',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              food.name.toString(),
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            '${totalFormat} vnd',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotal() {
    var currencyFormatter = NumberFormat('#,###', 'ID');
    var total = currencyFormatter.format(controller.totalPayment.value);

    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 20,
        top: 20,
      ),
      child: Row(
        children: [
          Text(
            'Tổng:',
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                '${total} vnd',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPayment() {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          //Get.back(result: controller.totalPayment.value);
          controller.confirmPayment();
        },
        child: Container(
          height: 50,
          width: 250,
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.red[900],
          ),
          child: Text(
            'THANH TOÁN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
