import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_restuarent_app/models/popularFood.dart';

class popularFoodCart extends StatefulWidget {
  final PopulerFood populerFood;
  const popularFoodCart({
    super.key,
    required this.populerFood,
  });

  @override
  State<popularFoodCart> createState() => _popularFoodCartState();
}

class _popularFoodCartState extends State<popularFoodCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            // BoxShadow(
            //   blurRadius: 100,
            //   color: Colors.grey.shade400,
            //   // blurStyle: BlurStyle.outer,
            //   spreadRadius: 5,
            // ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              widget.populerFood.imagepath,
              height: 100,
            ),
            // ignore: prefer_const_constructors

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.populerFood.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                const Gap(10),
                Text(
                  widget.populerFood.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                )
              ],
            ),

            const SizedBox(
              child: Icon(
                Icons.favorite,
                size: 35,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
