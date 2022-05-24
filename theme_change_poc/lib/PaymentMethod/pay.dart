// import 'package:flutter/material.dart';
//
// class Payment extends StatefulWidget {
//   const Payment({ Key? key}) : super(key: key);
//
//   @override
//   _PaymentState createState() => _PaymentState();
// }
//
// class _PaymentState extends State<Payment> {
//   int value = 0;
//   final paymentLabels = [
//     'UPI',
//     'Wallets',
//     'Credit/Debit/ATM Card',
//     "Net Banking",
//     "EMI"
//   ];
//   final paymentIcons = [
//     Icons.money_off_csred,
//     Icons.money_off,
//     Icons.payment,
//     Icons.account_balance_wallet,
//     Icons.money,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(title: Text("Payment"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.separated(
//               itemCount: paymentLabels.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Radio(
//                     activeColor: Colors.orange,
//                     value: index,
//                     groupValue: value,
//                     onChanged: (i) => setState(() => value != i),
//                   ),
//                   title: Text(
//                     paymentLabels[index],
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   trailing: Icon(paymentIcons[index], color: Colors.orange),
//                 );
//               },
//               separatorBuilder: (context, index) {
//                 return Divider();
//               },
//             ),
//           ),
//
//         ElevatedButton(
//             child: Text('Pay'),
//             onPressed: () {}
//           ),
//         ],
//       ),
//     );
//   }
// }