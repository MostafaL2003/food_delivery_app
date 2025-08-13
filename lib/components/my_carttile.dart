import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/cart_item.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCarttile extends StatelessWidget {
  final CartItem cartItem;

  const MyCarttile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: Image.asset(
          cartItem.food.imagePath,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
        title: Text(cartItem.food.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("\$${cartItem.food.price.toStringAsFixed(2)}"),
            if (cartItem.selectedAddons.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Wrap(
                  spacing: 4,
                  runSpacing: 2,
                  children:
                      cartItem.selectedAddons
                          .map(
                            (addon) => Chip(
                              label: Text(addon.name),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          )
                          .toList(),
                ),
              ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                Provider.of<Restaurant>(
                  context,
                  listen: false,
                ).removeFromCart(cartItem);
              },
            ),
            Text(cartItem.quantity.toString()),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Provider.of<Restaurant>(
                  context,
                  listen: false,
                ).addToCart(cartItem.food, cartItem.selectedAddons);
              },
            ),
          ],
        ),
      ),
    );
  }
}
