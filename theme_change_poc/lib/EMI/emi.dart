import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
//
class EMIScreen extends StatefulWidget {
  const EMIScreen({Key? key}) : super(key: key);

  @override
  State<EMIScreen> createState() => _EMIScreenState();
}

class _EMIScreenState extends State<EMIScreen> {
  int value = 0;
  final paymentLabels = [
    'American Express Credit Card',
    'Axis Bank Credit Card',
    'Citibank Credit Card',
    "HDFC Bank Credit Card",
    "ICICI Bank Credit Card"
  ];
  final paymentIcons = [
    Icons.money_off_csred,
    Icons.money_off,
    Icons.payment,
    Icons.account_balance_wallet,
    Icons.money,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Payment"),
      ),
      bottomNavigationBar:
      ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
        onPressed: () {},
        child: Text(
          "Continue",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemCount: paymentLabels.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.payment),
                        title: Text(
                          paymentLabels[index],
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 20,),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Divider(thickness: 20,),
              ),
            ]),
      ),
    );
  }
}
