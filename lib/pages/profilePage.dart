import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_restuarent_app/components/button.dart';
import 'package:new_restuarent_app/components/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColor.withOpacity(0.5),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 14, right: 14, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(20),

              // TODO: Pick image from device

              Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: mainBgColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.white,
                ),
              ),
              const Gap(50),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myProfileListTile(
                    title: "Name :",
                    subtitle: "Armanul Haque Tanvir",
                  ),
                  myProfileListTile(
                    title: "Email :",
                    subtitle: "armanulhaquetanvir66@gmail.com",
                  ),
                  Row(
                    children: [
                      myProfileListTile(
                        title: "Year of Birth :",
                        subtitle: "2002",
                      ),
                      Gap(10),
                      myProfileListTile(
                        title: "Sex :",
                        subtitle: "Male",
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(70),
              MyButton(text: "Edit", onTap: () {}),
              const Gap(10),
              MyButton(text: "Delete Accout", onTap: () {}),
              const Gap(10),
              MyButton(text: "Change Password", onTap: () {}),
              const Gap(10),
              MyButton(text: "Log Out", onTap: () {}),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}

class myProfileListTile extends StatelessWidget {
  final String title, subtitle;
  const myProfileListTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 5,
        top: 10,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
