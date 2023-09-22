import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/cartContainer.dart';
import 'package:new_restuarent_app/models/food.dart';
import '../components/colors.dart';
import '../components/miniMenu.dart';

class FoodDetailsPage extends StatelessWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey.shade700,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  // Images

                  Image.asset(
                    food.imagepath,
                    height: 250,
                  ),
                  const SizedBox(height: 40),
                  // Rating

                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade800,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        food.rating,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),

                  const Gap(20),

                  Text(
                    food.name,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Ingredients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900,
                      fontSize: 20,
                    ),
                  ),
                  // const SizedBox(height: 50),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        miniMenu(
                          imagePath: 'assets/images/nigiri.png',
                          title: 'Sushi',
                          color: Colors.white,
                          containerColor: primaryColor.withOpacity(0.8),
                        ),
                        miniMenu(
                          imagePath: 'assets/images/donut.png',
                          title: 'Donut',
                          color: Colors.white,
                          containerColor: primaryColor.withOpacity(0.8),
                        ),
                        miniMenu(
                          imagePath: 'assets/images/sushi.png',
                          title: 'Sushi',
                          color: Colors.white,
                          containerColor: primaryColor.withOpacity(0.8),
                        ),
                      ],
                    ),
                  ),

                  const Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),

                  Text(
                    "Lorem Ipsum description of the world as a whole  (not just for the people who created   it)Lorem Ipsum description of the world as a whole  (not just for the people who created   it)   and a description of the world as a whole (not just for the people who created it   and the description   and others    and a description of the world as a whole (not just for the people who created it   and the description   and others ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                      height: 2,
                      fontSize: 15,
                    ),
                  ),

                  const Gap(30),
                ],
              ),
            ),
          ),
          CartContainer(food: food),
        ],
      ),
    );
  }
}
