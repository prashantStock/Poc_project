import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
//
class NetBankingScreen extends StatefulWidget {
  const NetBankingScreen({Key? key}) : super(key: key);

  @override
  State<NetBankingScreen> createState() => _NetBankingScreenState();
}

class _NetBankingScreenState extends State<NetBankingScreen> {
  int value = 0;
  final paymentLabels = [
    'HDFC Bank',
    'ICICI Bank',
    'State Bank of india',
    "Axis Bank",
    "Kotak Mahindra Bank"
  ];
  final paymentIcons = [
    Icons.paypal,
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
        title: Text("Select Bank"),
      ),
      bottomNavigationBar:
      ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
        onPressed: () {},
        child: Text(
          "Pay Now",
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
                      Padding(padding:EdgeInsets.only(left: 18,top: 15), child: Text("Price Details")),
                      Padding(padding:EdgeInsets.only(left: 18,top: 30), child: Text("Price")),
                      Padding(padding:EdgeInsets.only(left: 18,top: 10), child: Text("Amount Payable"),),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
