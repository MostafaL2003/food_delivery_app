import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text("Home"),
        ),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
    );
  }
}
