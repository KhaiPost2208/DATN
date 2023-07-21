import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PaymentController extends GetxController {
  var totalPayment = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  String getTotalPayment() {
    if (totalPayment.value > 0) {
      var currencyFormatter = NumberFormat('#,###', 'ID');
      var totalFormat = currencyFormatter.format(totalPayment.value);
      return '$totalFormat VNĐ';
    }

    return '';
  }
}
