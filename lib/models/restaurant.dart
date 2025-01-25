import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:futter_food/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers

    Food(
      name: "Chicken burger",
      description: "Crispy seasoned chicken breast, topped with mandatory melted cheese, piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo.",
      imagePath: "lib/images/burger/chicken_bur.jpg",
      price: 0.97,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.76),
        Addon(name: "Bacon", price: 0.99),
        Addon(name: "Avocado", price: 0.87),
      ],
    ),
    Food(
      name: "Grilled Cheese Burger",
      description: "  Each mouthwatering burger has a thin, seasoned grilled beef patty, two slices of melty American cheese, and a dollop of this super easy homemade burger sauce. ",
      imagePath: "lib/images/burger/grilled_cheese_bur.jpeg",
      price: 1.97,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.76),
        Addon(name: "Bacon", price: 0.99),
        Addon(name: "Avocado", price: 0.87),
      ],
    ),
    Food(
      name: "Grilled Turkey Burger",
      description: "super juicy, flavorful, & straight-forward! Made with just 5 simple ingredients, these turkey burgers are great for weeknights & summer BBQs alike.",
      imagePath: "lib/images/burger/tbr.jpg",
      price: 1.40,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.76),
        Addon(name: "Bacon", price: 0.99),
        Addon(name: "Avocado", price: 0.87),
      ],
    ),
    Food(
      name: "Vegan burger",
      description: "This veggie burger has an amazing meaty texture and savory, smoky flavor. It’ll keep its shape when it’s stuffed inside a bun.",
      imagePath: "lib/images/burger/vegan.jpg",
      price: 0.80,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.76),
        Addon(name: "Bacon", price: 0.99),
        Addon(name: "Avocado", price: 0.87),
      ],
    ),


    //sides
    Food(
      name: "Garlic Prawns",
      description: "Succulent prawns sautéed in a rich garlic butter sauce, bursting with flavor.",
      imagePath: "lib/images/sides/Garlic-Prawns.jpg",
      price: 2.80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),
    Food(
      name: "Hot Butter Cuttlefish",
      description: "Crispy fried cuttlefish tossed in a spicy, savory butter sauce with a hint of chili.",
      imagePath: "lib/images/sides/Hot-Butter-Cuttlefish.jpg",
      price: 3.50,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),
    Food(
      name: "Fried Mushroom Dish",
      description: "Fried mushrooms seasoned to perfection, served with a crispy exterior and juicy, tender inside.",
      imagePath: "lib/images/sides/mushroom.png",
      price: 0.98,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),
    Food(
      name: "Fried Potato Dish",
      description: "Crispy fried potatoes, perfectly seasoned and golden brown, with a soft and fluffy center",
      imagePath: "lib/images/sides/potato.png",
      price: 1.80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),

    //salads
    Food(
      name: "Healthy salad with Chicken",
      description: "Grilled chicken atop fresh greens and vibrant veggies, tossed in a light dressing.",
      imagePath: "lib/images/salad/chiken.jpg",
      price: 3.80,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Olive", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),
    Food(
      name: "Healthy salad with Egg",
      description: "Fresh greens and veggies topped with boiled eggs, lightly dressed for a wholesome meal.",
      imagePath: "lib/images/salad/egg.jpeg",
      price: 3.80,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Olive", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),
    Food(
      name: "Lettuce Salad",
      description: "Crisp lettuce tossed with fresh veggies and a light, tangy dressing.",
      imagePath: "lib/images/salad/Lettuce.jpg",
      price: 3.80,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Olive", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),
    Food(
      name: "Healthy Vegi Salad",
      description: "A vibrant mix of fresh veggies tossed in a light, zesty dressing.",
      imagePath: "lib/images/salad/vegi.jpg",
      price: 3.80,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Olive", price: 0.76),
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Lemon Slices", price: 0.87),
      ],
    ),

    //desserts
    Food(
      name: "Caramel Pudding",
      description: "Smooth, creamy pudding topped with a rich caramel sauce.",
      imagePath: "lib/images/des/caramal_puddin.jpg",
      price: 3.80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra honey", price: 0.76),
      ],
    ),
    Food(
      name: "Chocolate Moose",
      description: "Decadent, airy chocolate mousse with a rich, velvety texture.",
      imagePath: "lib/images/des/chocolate_moose.jpg",
      price: 3.80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate", price: 0.76),
      ],
    ),
    Food(
      name: "Strawberry Shortcake",
      description: "Light and fluffy cake layered with fresh strawberries and whipped cream.",
      imagePath: "lib/images/des/strawberry_shortcake.jpg",
      price: 3.80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra strawberry", price: 0.76),
      ],
    ),
    Food(
      name: "Vanilla Cake",
      description: "Moist and fluffy vanilla cake, rich in flavor and perfect for any occasion.",
      imagePath: "lib/images/des/vanila_cake.jpg",
      price: 3.80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra vanilla ", price: 0.76),
      ],
    ),

    //drinks
    Food(
      name: "Vanilla Milkshake",
      description: "Creamy vanilla milkshake blended to perfection, topped with whipped cream.",
      imagePath: "lib/images/drinks/Vanilla_milkshake.jpg",
      price: 3.80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra vanilla ", price: 0.76),
        Addon(name: "Extra Ice-Cream ", price: 0.76),
      ],
    ),
    Food(
      name: "Chocolate Milkshake",
      description: "Rich and creamy chocolate milkshake, topped with whipped cream and chocolate drizzle.",
      imagePath: "lib/images/drinks/chocolate_milkshake.jpg",
      price: 3.80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Chocolate ", price: 0.76),
        Addon(name: "Extra Ice-Cream ", price: 0.76),
      ],
    ),
    Food(
      name: "Strawberry Milkshake",
      description: "Creamy strawberry milkshake topped with whipped cream.",
      imagePath: "lib/images/drinks/strawberry_milkshake.jpg",
      price: 3.80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Strawberry ", price: 0.76),
        Addon(name: "Extra Ice-Cream ", price: 0.76),
      ],
    ),

  ];

  /*
  G E T T E R S
   */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;


/*
O P E R A T I O N
 */

  //user cart
  final List<CartItem> _cart = [];

//add to the cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if the item already exist, increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ),
      );
    }
  }

  notifyListeners();

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }
      else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//get total price of cart

double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
}

//get total number of items in the cart
int getTotalItemCount(){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
}

//clear cart
void clearCart(){
    _cart.clear();
    notifyListeners();
}
  // update cart item quantity
  void updateCartItem(CartItem cartItem, int quantity) {
    // Find the item in the cart
    int index = _cart.indexOf(cartItem);

    if (index != -1) {
      // If the quantity is greater than 0, update it
      if (quantity > 0) {
        _cart[index].quantity = quantity;
      }
      // If the quantity is 0 or less, remove the item from the cart
      else {
        _cart.removeAt(index);
      }

      notifyListeners(); // Notify the UI of changes
    }
  }
}






