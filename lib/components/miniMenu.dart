import 'package:flutter/material.dart';

// ignore: must_be_immutable
class miniMenu extends StatelessWidget {
  final String imagePath, title;
  final Color color, containerColor;
  void Function()? onTap;
  miniMenu({
    super.key,
    required this.imagePath,
    required this.title,
    required this.color,
    required this.containerColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 70,
          width: 170,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 40,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
