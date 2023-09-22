import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/Login&Registration/loginTab.dart';
import 'package:new_restuarent_app/Login&Registration/registrationTab.dart';
import 'package:new_restuarent_app/components/colors.dart';

class LogInpage extends StatefulWidget {
  const LogInpage({super.key});

  @override
  State<LogInpage> createState() => _LogInpageState();
}

class _LogInpageState extends State<LogInpage> {
  @override
  Widget build(BuildContext context) {
    // bool? isPressed;
    return Scaffold(
      backgroundColor: primaryColor,
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                // name of the restuarent

                // Image of a Food

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/burger.png",
                    fit: BoxFit.cover,
                    height: 200,
                    width: 200,
                  ),
                ),

                Gap(20),
                Text(
                  "WELCOME   to   FOODIE",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),

                // Row of Google, Email and facebook login
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageContainer(
                      imagePath: "assets/images/google.png",
                    ),
                    ImageContainer(
                      imagePath: "assets/images/facebook.png",
                    ),
                    ImageContainer(
                      imagePath: "assets/images/gmail.png",
                    ),
                  ],
                ),

                // 2 tab bar
                const Gap(40),

                TabBar(
                  labelPadding: const EdgeInsets.all(10),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // labelStyle: const TextStyle(
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.red,
                  // ),
                  tabs: const [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "REGISTER",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      LoginTab(),
                      RegistrationTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String imagePath;
  const ImageContainer({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 50,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300, width: 2),
        ),
        child: Image.asset(
          imagePath,
          height: 5,
        ),
      ),
    );
  }
}
