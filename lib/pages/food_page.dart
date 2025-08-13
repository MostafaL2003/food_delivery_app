import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Map<Addon, bool> selectedAddons = {};
  final Food food;

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //FOOD IMAGE
            Image.asset(
              widget.food.imagePath,
              fit: BoxFit.cover,
              height: 350,
              width: 600,
            ),
            //FOOD NAME
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  //FOOD DESCRIPTION
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("\$${widget.food.price}"),
                  SizedBox(height: 50),
                  //FOOD ADDON
                  Text(
                    "Add-ons",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.food.availableAddons.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      Divider();
                      Addon addon = widget.food.availableAddons[index];
                      return CheckboxListTile(
                        title: Text(addon.name),
                        subtitle: Text("\$${addon.price}"),
                        value: widget.selectedAddons[addon],
                        onChanged: (bool? value) {
                          setState(() {
                            widget.selectedAddons[addon] = value!;
                          });
                        },
                      );
                    },
                  ),
                  //ADD TO CART
                  SizedBox(height: 20),
                  MyButton(
                    onTap: () => addToCart(widget.food, widget.selectedAddons),
                    text: "Add to cart",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
