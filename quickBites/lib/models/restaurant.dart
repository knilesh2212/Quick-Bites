import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  /*

 menu items

*/

  final List<Food> _menu = [
    // pizza
    Food(
      name: "Margherita Pizza",
      description:
          "Thin crust Margherita with fresh tomato sauce, mozzarella, and basil.",
      imagePath: "lib/images/pizzas/Margherita_Pizza.png",
      price: 350.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Cheese", price: 50),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),

    Food(
      name: "Vegetarian Supreme Pizza",
      description:
          "A vibrant mix of vegetables on a golden-brown crust with mozzarella.",
      imagePath: "lib/images/pizzas/Vegetarian_Supreme_Pizza.png",
      price: 450.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Olives", price: 30),
      ],
    ),

    Food(
      name: "Mushroom Pizza",
      description: "Crispy crust topped with mozzarella and sautéed mushrooms.",
      imagePath: "lib/images/pizzas/Mushroom_Pizza.png",
      price: 400.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra Mushrooms", price: 50),
        Addon(name: "Extra Cheese", price: 50),
      ],
    ),

    Food(
      name: "Spinach & Feta Pizza",
      description:
          "Golden crust with fresh spinach, crumbled feta, and garlic.",
      imagePath: "lib/images/pizzas/Spinach&Feta_Pizza.png",
      price: 430.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra Feta Cheese", price: 50),
        Addon(name: "Extra Spinach", price: 30),
      ],
    ),

    Food(
      name: "Pesto Veggie Pizza",
      description:
          "Thin crust with pesto and assorted vegetables like zucchini and bell peppers.",
      imagePath: "lib/images/pizzas/Pesto_Veggie_Pizza.png",
      price: 460.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra Pesto Sauce", price: 30),
        Addon(name: "Extra Cheese", price: 50),
      ],
    ),

    // burgers

    Food(
      name: "Classic Veg Burger",
      description:
          "Soft bun with lettuce, tomato, a veggie patty, cheese, and pickles.",
      imagePath: "lib/images/burgers/Classic_Veg_Burger.png",
      price: 250.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 30),
        Addon(name: "Extra Pickles", price: 20),
      ],
    ),

    Food(
      name: "Cheese Veggie Burger",
      description:
          "Veggie patty with extra cheese, avocado, and fresh veggies in a soft bun.",
      imagePath: "lib/images/burgers/Cheese_Veggie_Burger.png",
      price: 270.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30),
        Addon(name: "Avocado", price: 40),
      ],
    ),

    Food(
      name: "Spicy Veg Burger",
      description:
          "Spicy veggie patty with jalapeños and melted cheese in a toasted bun.",
      imagePath: "lib/images/burgers/Spicy_Veg.png",
      price: 290.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Jalapeños", price: 20),
        Addon(name: "Extra Cheese", price: 30),
      ],
    ),

    Food(
      name: "BBQ Veg Burger",
      description:
          "Veggie patty with smoky BBQ sauce, crispy onion rings in a soft bun.",
      imagePath: "lib/images/burgers/BBQ_Veg_Burger.png",
      price: 320.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 20),
        Addon(name: "Onion Rings", price: 30),
      ],
    ),

    Food(
      name: "Mushroom Veg Burger",
      description:
          "Veggie patty with sautéed mushrooms, extra cheese in a toasted bun.",
      imagePath: "lib/images/burgers/Mushroom_Veg_Burger.png",
      price: 330.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Mushrooms", price: 30),
        Addon(name: "Extra Cheese", price: 30),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description:
          "Crispy French fries with optional cheese and a sprinkle of herbs.",
      imagePath: "lib/images/sides/French_Fries.png",
      price: 150.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 30),
        Addon(name: "Extra Herbs", price: 20),
      ],
    ),

    Food(
      name: "Onion Rings",
      description: "Crispy onion rings with optional extra sauce and cheese.",
      imagePath: "lib/images/sides/Onion_Rings.png",
      price: 180.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 20),
        Addon(name: "Cheese", price: 30),
      ],
    ),

    Food(
      name: "Mozzarella Sticks",
      description:
          "Golden-brown mozzarella sticks with marinara sauce and optional extra cheese.",
      imagePath: "lib/images/sides/Mozzarella_Sticks.png",
      price: 220.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara Sauce", price: 20),
        Addon(name: "Extra Cheese", price: 30),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description:
          "Toasted garlic bread with optional extra cheese and garlic.",
      imagePath: "lib/images/sides/Garlic_Bread.png",
      price: 190.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30),
        Addon(name: "Extra Garlic", price: 20),
      ],
    ),

    Food(
      name: "Veggie Nachos",
      description:
          "Crunchy nachos topped with melted cheese, veggies, and optional jalapeños.",
      imagePath: "lib/images/sides/Veggie_Nachos.png",
      price: 230.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 30),
        Addon(name: "Jalapeños", price: 20),
      ],
    ),

    // drinks
    Food(
      name: "Coke",
      description:
          "Chilled Coke served with a lemon wedge and optional extra ice.",
      imagePath: "lib/images/drinks/Coke.png",
      price: 90.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 20),
        Addon(name: "Extra Ice", price: 10),
      ],
    ),

    Food(
      name: "Sprite",
      description:
          "Refreshing Sprite served with a lemon wedge and optional extra ice.",
      imagePath: "lib/images/drinks/Sprite.png",
      price: 90.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 20),
        Addon(name: "Extra Ice", price: 10),
      ],
    ),

    Food(
      name: "Orange Juice",
      description:
          "Freshly squeezed orange juice with optional extra orange slices and ice.",
      imagePath: "lib/images/drinks/Orange_Juice.png",
      price: 120.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Orange Slices", price: 20),
        Addon(name: "Ice", price: 10),
      ],
    ),

    Food(
      name: "Iced Tea",
      description: "Iced tea served with a lemon wedge and optional extra ice.",
      imagePath: "lib/images/drinks/Iced_Tea.png",
      price: 120.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 20),
        Addon(name: "Extra Ice", price: 10),
      ],
    ),

    Food(
      name: "Milkshake",
      description:
          "Creamy milkshake with optional extra whipped cream and chocolate syrup.",
      imagePath: "lib/images/drinks/Milkshake.png",
      price: 160.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Whipped Cream", price: 20),
        Addon(name: "Extra Chocolate Syrup", price: 20),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Cake",
      description:
          "Rich chocolate cake with optional extra chocolate sauce and ice cream.",
      imagePath: "lib/images/desserts/Chocolate_Cake.png",
      price: 250.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate Sauce", price: 30),
        Addon(name: "Ice Cream", price: 50),
      ],
    ),

    Food(
      name: "Cheesecake",
      description:
          "Creamy cheesecake with optional fruit toppings and extra cream.",
      imagePath: "lib/images/desserts/Cheesecake.png",
      price: 280.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fruit Topping", price: 30),
        Addon(name: "Extra Cream", price: 20),
      ],
    ),

    Food(
      name: "Apple Pie",
      description:
          "Warm apple pie with optional vanilla ice cream and caramel sauce.",
      imagePath: "lib/images/desserts/Apple_Pie.png",
      price: 240.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 50),
        Addon(name: "Caramel Sauce", price: 20),
      ],
    ),

    Food(
      name: "Brownie",
      description:
          "Decadent brownie with optional extra nuts and whipped cream.",
      imagePath: "lib/images/desserts/Brownie.png",
      price: 250.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 30),
        Addon(name: "Extra Whipped Cream", price: 20),
      ],
    ),

    Food(
      name: "Ice Cream Sundae",
      description:
          "Delightful ice cream sundae with optional extra toppings and sauces.",
      imagePath: "lib/images/desserts/Ice_Cream_Sundae.png",
      price: 280.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Toppings (Sprinkles, Nuts)", price: 30),
        Addon(name: "Extra Sauce (Chocolate, Caramel)", price: 20),
      ],
    ),
  ];

/*

 G E T T E R S

*/

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

/*

 O P E R A T I O N S

*/

// user cart
  final List<CartItem> _cart = [];

// dilivery address (Which user can change/update)

  String _deliveryAddress = 'Ahmedabad';

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise , add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

// get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

// clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update Address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

/*

 H E L P E R S

*/

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // formate the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("- - - - - - - - - - - - - - - - - -");
    receipt.writeln();

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Add-ons ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("- - - - - - - - - - - - - - - - - -");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

// format dounle value into money
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}";
  }

// format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addons) => "${addons.name} (${_formatPrice(addons.price)})")
        .join(", ");
  }
}
