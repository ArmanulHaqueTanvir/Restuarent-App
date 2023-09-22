import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_restuarent_app/components/foodTileBtn.dart';
import 'package:new_restuarent_app/models/food.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class FoodTile extends StatefulWidget {
  final Food food;
  void Function()? onTap;

  FoodTile({super.key, required this.food, required this.onTap});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  bool? _isPressed;
  var color;
  // late bool _isContaintetAvailabled;
  void addToFav() {
    final shop = context.read<Shop>();

    shop.addToFavouriteList(widget.food);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 10, top: 10),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 100,
              ),
              IconButton(
                onPressed: () {
                  // this function is for addToFavourite in the List

                  setState(() {
                    if (_isPressed == true) {
                      addToFav();
                    }
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: _isPressed == true ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.food.imagepath,
                height: 100,
              ),
              Text(
                widget.food.name,
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 20,
                ),
              ),
              // const Gap(10),
              SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.food.price}',
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellow.shade900,
                        ),
                        Text(
                          widget.food.rating,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          // const SizedBox(height: 19),
          const Gap(10),
          SizedBox(
            child: FoodTIleBTN(
              text: "Details",
              onTap: widget.onTap,
            ),
          ),
        ],
      ),
    );
  }
}
