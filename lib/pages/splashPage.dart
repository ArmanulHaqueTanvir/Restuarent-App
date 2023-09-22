import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/pages/introPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.to(
        const IntroPages(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset("assets/images/nigiri.png"),
          ),
          Center(
            child: Text(
              "FOODIE",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: primaryColor,
              ),
            ),
          ),
          const Gap(200),
          SpinKitRing(
            color: secoundaryColor,
            size: 50,
          ),
        ],
      ),
    );
  }
}
