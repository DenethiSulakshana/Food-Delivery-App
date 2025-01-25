import 'package:flutter/material.dart';
import 'package:futter_food/Components/my_cart_tile.dart';
import 'package:futter_food/Components/my_button.dart'; // Ensure you import your MyButton widget
import 'package:futter_food/models/restaurant.dart';
import 'package:futter_food/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // Clear cart button
              IconButton(
                icon: const Icon(Icons.delete), // Provide an icon
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Are you sure you want to clear the cart?"),
                      actions: [
                        // Cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        // Yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    // get individual cart item
                    final cartItem = userCart[index];

                    // return cart tile UI
                    return MyCartTile(cartItem: cartItem);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyButton(
                  onTap: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const PaymentPage(),
                  ),
                  ),
                  text: "Go to Checkout",
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}