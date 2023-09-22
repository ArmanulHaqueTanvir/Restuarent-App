import 'package:flutter/material.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/burgerTabView.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/nachozTabView.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/pizzaTabView.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/sandwhichTabView.dart';
import 'package:new_restuarent_app/components/miniMenu.dart';

class HomePageTabBar extends StatelessWidget {
  const HomePageTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            labelPadding: const EdgeInsets.all(7),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            tabs: [
              miniMenu(
                imagePath: 'assets/images/nigiri.png',
                title: 'Sandwhich',
                color: secoundaryColor,
                containerColor: Colors.white,
              ),
              miniMenu(
                imagePath: 'assets/images/sushi1.png',
                title: 'Nachos',
                color: secoundaryColor,
                containerColor: Colors.white,
              ),
              miniMenu(
                imagePath: 'assets/images/sushi2.png',
                title: 'Pizza',
                color: secoundaryColor,
                containerColor: Colors.white,
              ),
              miniMenu(
                imagePath: 'assets/images/sushi3.png',
                title: 'Burger',
                color: secoundaryColor,
                containerColor: Colors.white,
              ),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                SandwhichTabView(),
                NachosTabView(),
                PizzaTabView(),
                BurgerTabView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
