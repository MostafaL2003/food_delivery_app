import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food.dart';

class MyFoodListtile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodListtile({super.key, required this.food,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(children: [
            Expanded(
              child: Column(children: [
                Text(food.name),
                Text(food.price.toString()),
                Text(food.description),
              ],
              ),
              ),
              Image.asset(food.imagePath)
          ],),
        )
      ],
    );
  }
}
