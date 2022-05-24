import 'package:flutter/material.dart';


class WalletsScreen extends StatefulWidget {
  const WalletsScreen({Key? key}) : super(key: key);

  @override
  State<WalletsScreen> createState() => _WalletsScreenState();
}

class _WalletsScreenState extends State<WalletsScreen> {
  int value = 0;
  final paymentLabels = [
    "Paytm",
    'PhonePe',

  ];
  final paymentIcons = [
    Icons.money_off_csred,
    Icons.money_off,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Wallet App"),
      ),
      bottomNavigationBar:
      ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
        onPressed: () {},
        child: const Text(
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
