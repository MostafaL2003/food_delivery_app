import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food.dart';

class Restaurant extends ChangeNotifier {
  //MENU
  final List<Food> _menu = [
    //burger
    Food(
      name: "Classic Beef Burger",
      description: "Juicy beef patty with fresh lettuce and tomato!",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 14.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.99),
        Addon(name: "Sauce", price: 0.99),
        Addon(name: "Onion", price: 0.99),
      ],
    ),

    Food(
      name: "BBQ Bacon Burger",
      description: "Smoky BBQ sauce with crispy bacon strips!",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 16.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.99),
        Addon(name: "Sauce", price: 0.99),
        Addon(name: "Onion", price: 0.99),
      ],
    ),

    Food(
      name: "Mushroom Swiss Burger",
      description: "Grilled mushrooms with melted Swiss cheese!",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 15.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.99),
        Addon(name: "Sauce", price: 0.99),
        Addon(name: "Onion", price: 0.99),
      ],
    ),

    Food(
      name: "Spicy Jalapeño Burger",
      description: "Fiery jalapeños with pepper jack cheese kick!",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 15.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.99),
        Addon(name: "Sauce", price: 0.99),
        Addon(name: "Onion", price: 0.99),
      ],
    ),

    Food(
      name: "Double Deluxe Burger",
      description: "Double patty with all the premium toppings!",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 18.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.99),
        Addon(name: "Sauce", price: 0.99),
        Addon(name: "Onion", price: 0.99),
      ],
    ),
    //salad
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce with parmesan and croutons!",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Dressing", price: 0.99),
        Addon(name: "Croutons", price: 1.49),
      ],
    ),

    Food(
      name: "Greek Salad",
      description: "Fresh vegetables with feta cheese and olives!",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 11.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Dressing", price: 0.99),
        Addon(name: "Croutons", price: 1.49),
      ],
    ),

    Food(
      name: "Garden Fresh Salad",
      description: "Mixed greens with tomatoes and cucumber medley!",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Dressing", price: 0.99),
        Addon(name: "Croutons", price: 1.49),
      ],
    ),

    Food(
      name: "Spinach Power Salad",
      description: "Nutrient-packed spinach with nuts and berries!",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 12.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Dressing", price: 0.99),
        Addon(name: "Croutons", price: 1.49),
      ],
    ),

    Food(
      name: "Mediterranean Bowl",
      description: "Quinoa base with roasted vegetables and herbs!",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 13.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Extra Dressing", price: 0.99),
        Addon(name: "Croutons", price: 1.49),
      ],
    ),
    //sides
    Food(
      name: "Crispy French Fries",
      description: "Golden crispy fries seasoned to perfection!",
      imagePath: "lib/images/sides/side1.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Salt", price: 0.49),
        Addon(name: "Cheese Sauce", price: 1.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),

    Food(
      name: "Onion Rings",
      description: "Beer-battered onion rings with crispy coating!",
      imagePath: "lib/images/sides/side2.jpg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Salt", price: 0.49),
        Addon(name: "Cheese Sauce", price: 1.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),

    Food(
      name: "Mac & Cheese",
      description: "Creamy macaroni with three-cheese blend!",
      imagePath: "lib/images/sides/side3.jpg",
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Salt", price: 0.49),
        Addon(name: "Cheese Sauce", price: 1.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),

    Food(
      name: "Sweet Potato Fries",
      description: "Caramelized sweet potato fries with sea salt!",
      imagePath: "lib/images/sides/side4.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Salt", price: 0.49),
        Addon(name: "Cheese Sauce", price: 1.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),

    Food(
      name: "Loaded Nachos",
      description: "Tortilla chips with cheese, jalapeños and salsa!",
      imagePath: "lib/images/sides/side5.jpg",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Salt", price: 0.49),
        Addon(name: "Cheese Sauce", price: 1.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),
    //dessert
    Food(
      name: "Chocolate Brownie",
      description: "Rich fudgy brownie with chocolate chunks!",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 2.49),
        Addon(name: "Whipped Cream", price: 1.49),
        Addon(name: "Chocolate Sauce", price: 1.99),
      ],
    ),

    Food(
      name: "New York Cheesecake",
      description: "Creamy cheesecake with graham cracker crust!",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 2.49),
        Addon(name: "Whipped Cream", price: 1.49),
        Addon(name: "Chocolate Sauce", price: 1.99),
      ],
    ),

    Food(
      name: "Apple Pie Slice",
      description: "Warm apple pie with cinnamon and flaky crust!",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 2.49),
        Addon(name: "Whipped Cream", price: 1.49),
        Addon(name: "Chocolate Sauce", price: 1.99),
      ],
    ),

    Food(
      name: "Chocolate Chip Cookies",
      description: "Fresh-baked cookies with melted chocolate chips!",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 2.49),
        Addon(name: "Whipped Cream", price: 1.49),
        Addon(name: "Chocolate Sauce", price: 1.99),
      ],
    ),

    Food(
      name: "Tiramisu",
      description: "Italian coffee-soaked cake with mascarpone cream!",
      imagePath: "lib/images/desserts/dessert5.webp",
      price: 8.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 2.49),
        Addon(name: "Whipped Cream", price: 1.49),
        Addon(name: "Chocolate Sauce", price: 1.99),
      ],
    ),
    //drinks
    Food(
      name: "Classic Coca Cola",
      description: "Ice-cold refreshing cola with crisp bubbles!",
      imagePath: "lib/images/drinks/drink1.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.99),
        Addon(name: "Large Size", price: 1.49),
      ],
    ),

    Food(
      name: "Fresh Orange Juice",
      description: "100% pure squeezed orange juice, vitamin-packed!",
      imagePath: "lib/images/drinks/drink2.jpg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.99),
        Addon(name: "Large Size", price: 1.49),
      ],
    ),

    Food(
      name: "Iced Coffee",
      description: "Cold brew coffee with smooth rich flavor!",
      imagePath: "lib/images/drinks/drink3.jpg",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.99),
        Addon(name: "Large Size", price: 1.49),
      ],
    ),

    Food(
      name: "Strawberry Milkshake",
      description: "Creamy strawberry shake with real fruit pieces!",
      imagePath: "lib/images/drinks/drink4.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.99),
        Addon(name: "Large Size", price: 1.49),
      ],
    ),

    Food(
      name: "Sparkling Water",
      description: "Premium sparkling water with natural minerals!",
      imagePath: "lib/images/drinks/drink5.jpg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.99),
        Addon(name: "Large Size", price: 1.49),
      ],
    ),
  ];

  //getters//
  List<Food> get menu => _menu;

  //logic//

  //add to cart

  //remove from cart

  //total price of cart

  //number of items

  //clear cart

  //other methods//

  //generate receipt

  //format double to money

  //format list to string
}
