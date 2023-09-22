import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_restuarent_app/components/foodTile.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:new_restuarent_app/pages/foodDetailsPage.dart';
import 'package:provider/provider.dart';

class NachosTabView extends StatelessWidget {
  const NachosTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.nachos;
    // final popularFoodItems = shop.popularFood;

    void navigateToFoodDetails(int index) {
      final shop = context.read<Shop>();
      final foodMenu = shop.nachos;

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => FoodDetailsPage(
      //       food: foodMenu[index],
      //     ),
      //   ),
      // );

      Get.to(FoodDetailsPage(food: foodMenu[index]));
    }

    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: foodMenu.length,
        itemBuilder: (context, index) => FoodTile(
          food: foodMenu[index],
          onTap: () => navigateToFoodDetails(index),
        ),
      ),
    );
  }
}
