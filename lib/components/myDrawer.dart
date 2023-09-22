import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:new_restuarent_app/imagePicker/widget/screen/setPhotoScreen.dart';
import 'package:new_restuarent_app/pages/favouriteFoodItems.dart';
import 'colors.dart';
import 'myDrawerListTile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var firebase = Firebase.app;
    return Drawer(
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.7,
      backgroundColor: primaryColor.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Image.asset("assets/images/burger3.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  color: Colors.grey.shade300,
                  thickness: 2,
                ),
              ),
              const Gap(30),
              MyDrawerListTile(
                icon: const Icon(Icons.home),
                title: "H O M E",
                onTap: () => Navigator.pop(context),
              ),
              MyDrawerListTile(
                icon: const Icon(Icons.person),
                title: "P R O F I L E",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SetPhotoScreen(),
                    )),
              ),
              const MyDrawerListTile(
                icon: Icon(Icons.map),
                title: " L O C A T I O N",
                // onTap: () => Get.to(const LocationPage()),
              ),
              MyDrawerListTile(
                icon: const Icon(Icons.favorite),
                title: "F A V O U R I T E",
                onTap: () => Get.to(
                  FavouritePage(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: MyDrawerListTile(
              icon: const Icon(Icons.logout),
              title: "L O G O U T",
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
