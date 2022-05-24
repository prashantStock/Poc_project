import 'package:flutter/material.dart';
import '../Card/carddetails.dart';
import '../EMI/emi.dart';
import '../Netbanking/netbanking.dart';
import '../UPI/upi.dart';
import '../Wallets/wallets.dart';
import 'constant.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int value = 0;

  // bool navigateToPage=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      // bottomNavigationBar:
      // ElevatedButton(
      //   style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
      //   onPressed: () {
      //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>UpiScreen()));
      //   },
      //   child: const Text(
      //     "Continue",
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
      body: SafeArea(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Choose Your Payment Method",
              style: TextStyle(color: Colors.blue, fontSize: 28),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.separated(
                itemCount: paymentLabels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                        activeColor: Colors.blue,
                        value: index,
                        groupValue: value,
                        onChanged: (value) {
                          setState(() {
                            // navigateToPage = true;
                          });
                          if (value == 0) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return UpiScreen();
                            }));
                          } else if (value == 1) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return WalletsScreen();
                            }));
                          } else if (value == 2) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return cardDetails();
                            }));
                          } else if (value == 3) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NetBankingScreen();
                            }));
                          } else if (value == 4) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const EMIScreen();
                            }));
                          }
                        }),
                    title: Text(
                      paymentLabels[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(
                      paymentIcons[index],
                      color: Colors.blue,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Divider(
              thickness: 20,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 15),
                      child: Text("Price Details")),
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 30),
                      child: Text("Price")),
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 10),
                    child: Text("Amount Payable"),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
