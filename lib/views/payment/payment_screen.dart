import 'package:datingapp/utils/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late Razorpay razorpay;
  TextEditingController amountController = TextEditingController();
  @override
  void initState() {
    razorpay = Razorpay();
    super.initState();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_NNbwJ9tmM0fbxj",
      "amount": num.parse(amountController.text) * 100,
      "name": "Sample App",
      "description": "Payment for the some random product",
      "prefill": {"contact": "2323232323", "email": "shdjsdh@gmail.com"},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess() {
    print("Pament success");
    Toast.show("Pament success", textStyle: context);
  }

  void handlerErrorFailure() {
    print("Pament error");
    Toast.show("Pament error", textStyle: context);
  }

  void handlerExternalWallet() {
    print("External Wallet");
    Toast.show("External Wallet", textStyle: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTheme.violet,
        title: const Text('Make Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.number,
            controller: amountController,
            decoration: const InputDecoration(
                hintText: 'Enter your amount', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 30,
          ),
          CupertinoButton(
            color: CustomTheme.violet,
            child: const Text('Make Payment'),
            onPressed: () {
              openCheckout();
            },
          ),
        ]),
      ),
    );
  }
}
