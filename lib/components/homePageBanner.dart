import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/pages/allDetailsFoodPage.dart';

import 'button.dart';

class HomePageBanner extends StatelessWidget {
  final String promoPercent, imagePath;
  const HomePageBanner({
    super.key,
    required this.promoPercent,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  promoPercent,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                MyButton(
                  text: 'Buy Food',
                  onTap: () => Get.to(const AllDetailsFoodList()),
                )
              ],
            ),
            Image.asset(
              imagePath,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
