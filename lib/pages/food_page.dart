import 'package:flutter/material.dart';
import 'package:futter_food/Components/my_button.dart';
import 'package:futter_food/models/restaurant.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';
import 'cart_page.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food})
  {
    //initialize selected addons to be false
    for (Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
    }
}

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  //method add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons){

    // Navigate to CartPage after adding to cart
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartPage()),
    );

    //format the selected addons
    List<Addon>currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons){
      if (widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // food image
            Image.asset(widget.food.imagePath),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  // food price
                  Text(
                    '\$${widget.food.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // food description
                  Text(widget.food.description),
                  const SizedBox(height: 10),
                  Divider(color: Theme.of(context).colorScheme.secondary),

                  // Add-ons label
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Add-ons list
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        // get individual addon
                        Addon addon = widget.food.availableAddons[index];
                        // return the checkbox UI
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text('\$${addon.price}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            // Handle checkbox state change
                            setState(() {
                              widget.selectedAddons[addon]= value!;
                            });
                          },
                        );
                      },
                    ),
                  ),



                      // Add to cart logic
                    MyButton(text: "Add to cart",
                        onTap: ()=> addToCart(widget.food,
                          widget.selectedAddons),
                    ),

                  const SizedBox(height: 25),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
