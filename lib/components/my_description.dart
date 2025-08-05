import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //fee
          children: [
            Column(children: [Text("25 EGP!"), Text("Delivery fee")]),
            //time
            Column(
              children: [Text("Guaranteed 30 Minutes"), Text("Delivery time")],
            ),
          ],
        ),
      ),
    );
  }
}
