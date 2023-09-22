import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/models/food.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:provider/provider.dart';
import '../components/button.dart';
import '../payment/paymentController.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  // void calculateTotalAmount(BuildContext context) {
  @override
  Widget build(BuildContext context) {
    var paymentController = PaymentController();
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: primaryColor,
          title: Center(
            child: Text(
              "Your Cart",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // Get food from the cart

                  final Food food = value.cart[index];

                  // get food name
                  final String foodName = food.name;

                  // get food price

                  final String foodPrice = food.price;

                  // final foodImage = food.imagepath;

                  // return the listtile from here..

                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        title: Text(
                          foodName,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: secoundaryColor,
                          ),
                        ),
                        subtitle: Text(
                          foodPrice,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () => removeFromCart(food, context),
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Pay Button here..

            Container(
              padding: const EdgeInsets.all(20),
              child: MyButton(
                text: "Place Order",
                onTap: () {
                  setState(() {
                    paymentController.makePayment(
                        amount: '10', currency: 'USD');
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
