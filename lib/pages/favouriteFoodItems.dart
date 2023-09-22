import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/button.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/models/food.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class FavouritePage extends StatefulWidget {
  Food? food;
  FavouritePage({
    super.key,
    this.food,
  });

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    // int quantityCount = 0;
    // // void addToFavouriteList() {
    // //   if (quantityCount > 0) {
    // //     final shop = context.read<Shop>();

    // //     shop.addToFavouriteList(widget.food);

    // //     // Show dialog box for quantity
    // //   }
    // // }

    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: primaryColor,
          title: Center(
            child: Text(
              "Favourite Items",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.favourite.length,
                itemBuilder: (context, index) {
                  // Get food from the cart

                  final Food food = value.favourite[index];

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
                text: "Pay Now",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
