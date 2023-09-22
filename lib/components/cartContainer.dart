import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';
import 'button.dart';
import 'colors.dart';

class CartContainer extends StatefulWidget {
  final Food food;
  const CartContainer({super.key, required this.food});

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  int quantityCount = 0;

  // Increment functionaliy

  void decrement() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  // Increment functionaliy

  void increment() {
    setState(() {
      quantityCount++;
    });
  }

  // void checkUserAuth() {
  //   final FirebaseAuth auth = FirebaseAuth.instance;

  //   if(auth.)
  // }

  void addToCart() {
    if (quantityCount > 0) {
      final shop = context.read<Shop>();

      shop.addToCart(widget.food, quantityCount);

      // Show dialog box for quantity

      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: const Text(
            "Added Successfully",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);

                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // double totalAmount =  quantityCount;
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${widget.food.price}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Row(
                children: [
                  // Minus Button
                  Container(
                    decoration: BoxDecoration(
                      color: secoundaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: decrement,
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),

                  // Data
                  SizedBox(
                    width: 50,
                    child: Center(
                      child: Text(
                        quantityCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),

                  // Plus Button

                  Container(
                    decoration: BoxDecoration(
                      color: secoundaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: increment,
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          MyButton(
            text: "Add to Cart ",
            onTap: addToCart,
          ),
        ],
      ),
    );
  }
}
