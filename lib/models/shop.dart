import 'package:flutter/material.dart';
import 'package:new_restuarent_app/models/food.dart';
import 'package:new_restuarent_app/models/popularFood.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "21.99",
      imagepath: "assets/images/sushi2.png",
      rating: "4.9",
    ),
    Food(
      name: "Pizza Hut",
      price: "29.99",
      imagepath: "assets/images/sushi1.png",
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      price: "23.00",
      imagepath: "assets/images/sushi2.png",
      rating: "4.7",
    ),
    Food(
      name: "Salmon Sushi",
      price: "21.99",
      imagepath: "assets/images/sushi2.png",
      rating: "4.9",
    ),
    Food(
      name: "Pizza Hut",
      price: "29.99",
      imagepath: "assets/images/nigiri.png",
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      price: "23.00",
      imagepath: "assets/images/donut.png",
      rating: "4.7",
    ),
  ];

  // Data for burger from here........

  List<Food> get burgerMenu => _burgerMenu;

  final List<Food> _burgerMenu = [
    Food(
      name: "King Burger",
      price: "22.55",
      imagepath: "assets/images/burger.png",
      rating: "4.9",
    ),
    Food(
      name: "Chese Burger",
      price: "25.55",
      imagepath: "assets/images/cheese-burger.png",
      rating: "4.9",
    ),
    Food(
      name: "Hot Burger",
      price: "22.55",
      imagepath: "assets/images/cheese-burger.png",
      rating: "4.9",
    ),
    Food(
      name: "Special Burger",
      price: "22.55",
      imagepath: "assets/images/burger3.png",
      rating: "4.9",
    ),
    Food(
      name: "Hot Burger",
      price: "22.55",
      imagepath: "assets/images/burger2.png",
      rating: "4.9",
    ),
  ];

  // Data for Pizzaaaaa from here........

  List<Food> get pizzaMenu => _pizzaMenu;

  final List<Food> _pizzaMenu = [
    Food(
      name: "Cheese Pizza",
      price: "20.55",
      imagepath: "assets/images/pizza.png",
      rating: "4.6",
    ),
    Food(
      name: "Special Pizza",
      price: "25.00",
      imagepath: "assets/images/pizza1.png",
      rating: "4.9",
    ),
    Food(
      name: "Slice Pizza",
      price: "18.99",
      imagepath: "assets/images/pizza2.png",
      rating: "4.6",
    ),
    Food(
      name: "Hot Pizza",
      price: "14.55",
      imagepath: "assets/images/pizza3.png",
      rating: "4.5",
    ),
    Food(
      name: "Pizza Burg",
      price: "17.55",
      imagepath: "assets/images/pizza4.png",
      rating: "4.7",
    ),
  ];

  // Data for Pizzaaaaa from here........

  List<Food> get sandwhich => _sandwhich;

  final List<Food> _sandwhich = [
    Food(
      name: "Chicken Sand",
      price: "20.55",
      imagepath: "assets/images/sandwich.png",
      rating: "4.6",
    ),
    Food(
      name: "Cheese Sand",
      price: "25.00",
      imagepath: "assets/images/sandwich2.png",
      rating: "4.9",
    ),
    Food(
      name: "Hot Sandwich",
      price: "18.99",
      imagepath: "assets/images/sandwich3.png",
      rating: "4.6",
    ),
    Food(
      name: "Spicy Sandwich",
      price: "14.55",
      imagepath: "assets/images/sandwich4.png",
      rating: "4.5",
    ),
    Food(
      name: "Sandwich",
      price: "17.55",
      imagepath: "assets/images/sushi3.png",
      rating: "4.7",
    ),
  ];

  // Data for Pizzaaaaa from here........

  List<Food> get nachos => _nachos;

  final List<Food> _nachos = [
    Food(
      name: "Chicken Nachos",
      price: "20.55",
      imagepath: "assets/images/nachos.png",
      rating: "4.6",
    ),
    Food(
      name: "Cheese nachos",
      price: "25.00",
      imagepath: "assets/images/nachos2.png",
      rating: "4.9",
    ),
    Food(
      name: "Hot nachos",
      price: "18.99",
      imagepath: "assets/images/nachos3.png",
      rating: "4.6",
    ),
    Food(
      name: "Spicy nachos",
      price: "14.55",
      imagepath: "assets/images/nachos4.png",
      rating: "4.5",
    ),
    Food(
      name: "Nachos",
      price: "17.55",
      imagepath: "assets/images/nigiri.png",
      rating: "4.7",
    ),
  ];
  // Data for popular food items .......
  final List<PopulerFood> _popularFoodMenu = [
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/pizza.png",
    ),
    PopulerFood(
      name: "Hot Pizza",
      price: "\$21",
      imagepath: "assets/images/pizza3.png",
    ),
    PopulerFood(
      name: "Chese Burger",
      price: "\$17",
      imagepath: "assets/images/burger2.png",
    ),
    PopulerFood(
      name: "Nachoz",
      price: "\$21",
      imagepath: "assets/images/nachos3.png",
    ),
    PopulerFood(
      name: "Sandwich",
      price: "\$13",
      imagepath: "assets/images/sandwich.png",
    ),
    PopulerFood(
      name: "Akagay",
      price: "\$21",
      imagepath: "assets/images/akagai.png",
    ),
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/sushi.png",
    ),
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/sushi.png",
    ),
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/sushi.png",
    ),
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/sushi.png",
    ),
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/sushi.png",
    ),
    PopulerFood(
      name: "Spicy Pizza",
      price: "\$21",
      imagepath: "assets/images/sushi.png",
    ),
  ];

  List<Food> get foodMenu => _foodMenu;
  List<PopulerFood> get popularFood => _popularFoodMenu;

  // List<Food> allFood = _foodMenu.addAll(_popularFoodMenu);

  // add to cart methods

  final List<Food> _cart = [];
  List<Food> get cart => _cart;

  void addToCart(Food foodItems, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItems);
    }
    notifyListeners();
  }

  // remove from cart methods

  void removeFromCart(Food food) {
    _cart.remove(food);

    notifyListeners();
  }

  // add to Favourite list methods

  final List<Food> _favouritecart = [];
  List<Food> get favourite => _favouritecart;

  void addToFavouriteList(Food foodItems) {
    _favouritecart.add(foodItems);

    notifyListeners();
  }

  // void calculateAmount(Food food) {
  //   var price = food.price;
  // }
}
