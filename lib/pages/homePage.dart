import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/components/headindBTN.dart';
import 'package:new_restuarent_app/components/homePageBanner.dart';
import 'package:new_restuarent_app/components/myDrawer.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:new_restuarent_app/pages/allDetailsFoodPage.dart';
import 'package:new_restuarent_app/pages/allFoodPage.dart';
import 'package:new_restuarent_app/pages/cartPage.dart';
import 'package:new_restuarent_app/pages/notificationsPage.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../components/foodTile.dart';
import '../components/miniMenu.dart';
import '../components/popularFoodCard.dart';
import 'foodDetailsPage.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Food Menu...
  final _controller = PageController();

  void navigateToFoodDetails(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

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

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    final popularFoodItems = shop.popularFood;

    // late bool _isLoading = true;
    // final Food food;
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            // Get.to();
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Image.asset(
              'assets/images/messenger.png',
              color: primaryColor,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        foregroundColor: Colors.grey,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const CartPage());
            },
            icon: Icon(
              Icons.shopping_basket,
              color: primaryColor,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(NotificationPage());
            },
            icon: Icon(
              Icons.notifications,
              color: primaryColor,
              size: 35,
            ),
          ),
        ],
        title: Center(
          child: Text(
            "FOODIE",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
              color: primaryColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HomePageBanner(
                      promoPercent: "Get 20% off",
                      imagePath: "assets/images/maki.png",
                    ),
                    HomePageBanner(
                      promoPercent: "Get 12% off",
                      imagePath: "assets/images/maki2.png",
                    ),
                    HomePageBanner(
                      promoPercent: "Get 50% off",
                      imagePath: "assets/images/sushi3.png",
                    ),
                  ],
                ),
              ),

              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: secoundaryColor,
                ),
              ),

              // Search bar

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: primaryColor,
                    ),
                    border: InputBorder.none,
                    hintText: 'search here',
                  ),
                ),
              ),

              // mini - menu
              const SizedBox(height: 20),

              // HomePageTabBar(),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    miniMenu(
                      onTap: () => Get.to(const AllDetailsFoodList()),
                      imagePath: 'assets/images/donut.png',
                      title: 'Donut',
                      color: secoundaryColor,
                      containerColor: Colors.white,
                    ),
                    miniMenu(
                      onTap: () => Get.to(const AllDetailsFoodList()),
                      imagePath: 'assets/images/maki.png',
                      title: 'Maki',
                      color: secoundaryColor,
                      containerColor: Colors.white,
                    ),
                    miniMenu(
                      onTap: () => Get.to(const AllDetailsFoodList()),
                      imagePath: 'assets/images/nigiri.png',
                      title: 'Nigiri',
                      color: secoundaryColor,
                      containerColor: Colors.white,
                    ),
                    miniMenu(
                      onTap: () => Get.to(const AllDetailsFoodList()),
                      imagePath: 'assets/images/sushi1.png',
                      title: 'Sushi1',
                      color: secoundaryColor,
                      containerColor: Colors.white,
                    ),
                    miniMenu(
                      onTap: () => Get.to(const AllDetailsFoodList()),
                      imagePath: 'assets/images/sushi2.png',
                      title: 'Sushi2',
                      color: secoundaryColor,
                      containerColor: Colors.white,
                    ),
                    miniMenu(
                      onTap: () => Get.to(const AllDetailsFoodList()),
                      imagePath: 'assets/images/sushi3.png',
                      title: 'Sushi3',
                      color: secoundaryColor,
                      containerColor: Colors.white,
                    ),
                  ],
                ),
              ),

              // Food card start here....

              const SizedBox(height: 20),

              HeadingWithBTN(
                buttonName: "Show More",
                title: "TREANDING ITEMS",
                onTap: () => Get.to(const AllDetailsFoodList()),
              ),

              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                    food: foodMenu[index],
                    onTap: () => navigateToFoodDetails(index),
                  ),
                ),
              ),

              // Popular food list here....
              const SizedBox(height: 20),

              HeadingWithBTN(
                buttonName: "Show More",
                title: "Popular Items",
                onTap: () => Get.to(const allFoodPage()),
              ),

              const Gap(20),

              Container(
                height: 300,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade300,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: popularFoodItems.length ~/ 2,
                      itemBuilder: (context, index) => popularFoodCart(
                        populerFood: popularFoodItems[index],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
