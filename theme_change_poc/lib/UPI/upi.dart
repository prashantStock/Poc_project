import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UpiScreen extends StatefulWidget {
  const UpiScreen({Key? key}) : super(key: key);

  @override
  State<UpiScreen> createState() => _UpiScreenState();
}

class _UpiScreenState extends State<UpiScreen> {
  int value = 0;
  final paymentLabels = [
    'PhonePe',
    'Paytm',
    'Google Pay',
    "Your UPI ID",
  ];
  final paymentIcons = [
    Icons.money_off_csred,
    Icons.money_off,
    Icons.payment,
    Icons.account_balance_wallet,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Select UPI ID"),
      ),
      bottomNavigationBar:
      ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
        onPressed: () {},
        child: Text(
          "Pay NOW",
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
                        leading: Radio(
                          activeColor: Colors.orange,
                          value: index,
                          groupValue: value,
                          onChanged: (i) => setState(() => value != i),
                        ),
                        title: Text(
                          paymentLabels[index],
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(paymentIcons[index]),
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
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(padding:EdgeInsets.only(left: 20,top: 20), child: Text("Price Details")),
                      Padding(padding:EdgeInsets.only(left: 20,top: 20), child: Text("Price")),
                      Padding(padding:EdgeInsets.only(left: 20,top: 20), child: Text("Amount Payable"),),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
