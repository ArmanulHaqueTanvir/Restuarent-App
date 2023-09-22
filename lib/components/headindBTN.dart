import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingWithBTN extends StatelessWidget {
  final String title, buttonName;
  void Function()? onTap;
  HeadingWithBTN(
      {super.key, required this.title, required this.buttonName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.grey.shade900,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            buttonName,
            style: const TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
