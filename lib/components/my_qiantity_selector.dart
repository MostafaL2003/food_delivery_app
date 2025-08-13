import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food.dart';

class MyQiantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback increment;
  final VoidCallback decrement;

  const MyQiantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: decrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(quantity.toString()),
            ),
          ),
          GestureDetector(
            onTap: increment,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
