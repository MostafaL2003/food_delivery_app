import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_description.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_location.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppbar(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      endIndent: 30,
                      indent: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    //LOCATION
                    MyLocation(),
                    Divider(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    //DESCRIPTION
                    MyDescription(),
                    SizedBox(height: 20),
                    Divider(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ],
                ),
                title: Text("Title"),
              ),
            ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
