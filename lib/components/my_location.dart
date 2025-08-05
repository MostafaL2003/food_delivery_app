import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  void locationSearch(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Your location"),
            content: TextField(
              decoration: InputDecoration(hintText: "Your address.."),
            ),
            actions: [
              //save  button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Save"),
              ),
              //cancel button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Deliver now!"),
        //adress
        GestureDetector(
          onTap: () => locationSearch(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "156 Cairo street, Egypt",
                style: TextStyle(
                  color: const Color.fromARGB(255, 23, 109, 180),
                ),
              ),
            ],
          ),
        ),
        //menu
        Icon(Icons.keyboard_arrow_down_rounded),
      ],
    );
  }
}
