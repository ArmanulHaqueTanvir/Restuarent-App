import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/components/popularFoodCard.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:provider/provider.dart';

class allFoodPage extends StatelessWidget {
  const allFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final popularFoodMenu = shop.popularFood;
    // final food = shop.foodMenu;

    // final allFood = popularFoodMenu.addAll(food);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
          "ALL FOODS",
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: primaryColor.withOpacity(0.9999999),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: popularFoodMenu.length,
            itemBuilder: (context, index) => popularFoodCart(
              populerFood: popularFoodMenu[index],
            ),
          ),
        ),
      ),
    );
  }
}
