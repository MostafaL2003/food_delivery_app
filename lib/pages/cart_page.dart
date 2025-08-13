import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_carttile.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              // Cart Items
              Expanded(
                child:
                    userCart.isEmpty
                        ? Center(
                          child: Text(
                            "Your cart is empty",
                            style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 16,
                            ),
                          ),
                        )
                        : ListView.builder(
                          itemCount: userCart.length,
                          itemBuilder: (context, index) {
                            final cartItem = userCart[index];
                            return MyCarttile(cartItem: cartItem);
                          },
                        ),
              ),

              if (userCart.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MyButton(
                    text: "Go to Checkout",
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                          ),
                        ),
                  ),
                ),
              SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
