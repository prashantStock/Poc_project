import 'package:flutter/material.dart';

class cardDetails extends StatefulWidget {
  const cardDetails({Key? key}) : super(key: key);

  @override
  State<cardDetails> createState() => _cardDetailsState();
}

class _cardDetailsState extends State<cardDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Enter Card Details"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: const InputDecoration(
          labelText: "Card Number"),
        ),
      ),

    );
  }
}
