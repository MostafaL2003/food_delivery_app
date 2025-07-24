import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //LOGO
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Icon(
              Icons.person_pin_circle,
              size: 70,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          //HOME TILE
          MyDrawerTile(text: "HOME", icon: Icons.home, onTap: () {}),
          //SETTINGS TILE
          MyDrawerTile(text: "SETTINGS", icon: Icons.settings, onTap: () {}),
          //LOGOUT TILE
          MyDrawerTile(text: "LOGOUT", icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
