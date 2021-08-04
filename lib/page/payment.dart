import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/widgets.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final razorpay = Razorpay();

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paySuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, payError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWallet);
    super.initState();
  }

  void paySuccess(PaymentSuccessResponse response) {
    print(response.paymentId.toString());
  }

  void payError(PaymentFailureResponse response) {
    print(response.message! + response.code.toString());
  }

  void externalWallet(ExternalWalletResponse response) {
    print(response.walletName);
  }

  getPayment() {
    var option = {
      'key': 'rzp_test_hRbnzN5j37O778',
      'amount': double.parse(controller.text.trim()) * 100,
      'name': 'xyz',
      'prefill': {'contact': '1234567890', 'email': 'xyz@gmail.com'}
    };

    try {
      razorpay.open(option);
    } catch (e) {
      print('erroris $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(child: Text('pay'), onPressed: () => getPayment())
        ],
      ),
    );
  }
}
