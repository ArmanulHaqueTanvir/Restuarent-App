import 'package:flutter/material.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/burgerTabView.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/nachozTabView.dart';
import 'package:new_restuarent_app/components/homepageTabs.dart/pizzaTabView.dart';
import 'package:new_restuarent_app/components/miniMenu.dart';

import '../components/homepageTabs.dart/sandwhichTabView.dart';

class AllDetailsFoodList extends StatefulWidget {
  const AllDetailsFoodList({super.key});

  @override
  State<AllDetailsFoodList> createState() => _AllDetailsFoodListState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _AllDetailsFoodListState extends State<AllDetailsFoodList>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelPadding: const EdgeInsets.all(1),
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          labelStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          isScrollable: true,
          controller: _tabController,
          tabs: [
            miniMenu(
              imagePath: 'assets/images/nigiri.png',
              title: 'Sand',
              color: secoundaryColor,
              containerColor: Colors.transparent,
            ),
            miniMenu(
              imagePath: 'assets/images/sushi1.png',
              title: 'Nachos',
              color: secoundaryColor,
              containerColor: Colors.transparent,
            ),
            miniMenu(
              imagePath: 'assets/images/sushi2.png',
              title: 'Pizza',
              color: secoundaryColor,
              containerColor: Colors.transparent,
            ),
            miniMenu(
              imagePath: 'assets/images/sushi3.png',
              title: 'Burger',
              color: secoundaryColor,
              containerColor: Colors.transparent,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TabBarView(
          controller: _tabController,
          children: const [
            SandwhichTabView(),
            NachosTabView(),
            PizzaTabView(),
            BurgerTabView(),
          ],
        ),
      ),
    );
  }
}
