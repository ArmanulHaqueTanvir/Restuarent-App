import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/button.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/models/firebaseAuth.dart';
import 'package:new_restuarent_app/pages/homePage.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SUSHI MAN",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/maki.png',
                    height: 300,
                  ),
                  const Positioned(
                    right: 0,
                    top: 100,
                    child: Column(
                      children: [
                        commonText(text: '歡迎'),
                        SizedBox(height: 20),
                        commonText(text: '壽司'),
                        SizedBox(height: 20),
                        commonText(text: '餐廳'),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "THE TASTE OF BANGLADESHI FOOD",
                textAlign: TextAlign.left,
                style: GoogleFonts.dmSerifDisplay(
                  letterSpacing: 4,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Feel the taste of most popolar Bangladeshi foods from anywhere in anytime",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                text: "Get Started",
                onTap: () {
                  Get.to(const HomePage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class commonText extends StatelessWidget {
  final String text;
  const commonText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
