import 'package:flutter/material.dart';
import 'package:futter_food/models/cart_item.dart';
import 'package:futter_food/models/restaurant.dart';
import 'package:provider/provider.dart';

import 'my_quantuty_selector.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // Food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Food name
                      Text(cartItem.food.name),

                      // Food price
                      Text('\$' + cartItem.food.price.toString()),
                    ],
                  ),

                  const Spacer(),

                  // Increment or decrement quantity using QuantitySelector
                  QuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onDecrement: () {
                      if (cartItem.quantity > 1) {
                        context.read<Restaurant>().updateCartItem(
                            cartItem, cartItem.quantity - 1);
                      } else {
                        context.read<Restaurant>().removeFromCart(cartItem);
                      }
                    },
                    onIncrement: () {
                      context.read<Restaurant>().updateCartItem(
                          cartItem, cartItem.quantity + 1);
                    },
                  ),
                ],
              ),
            ),

            // Addons section (if any addons are selected)
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedAddons
                    .map(
                      (addon) => FilterChip(
                    label: Row(
                      children: [
                        // Addon name
                        Text(addon.name),

                        // Addon price
                        Text('(\$${addon.price})'),
                      ],
                    ),
                    onSelected: (value) {},
                  ),
                )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
