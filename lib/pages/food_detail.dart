import 'package:appy_one/components/button.dart';
import 'package:appy_one/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food.dart';

class DetailPage extends StatefulWidget {
  final Food food;
  const DetailPage({super.key, required this.food});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int cartQuantity = 0;

  // increment
  void increment() {
    setState(() {
      cartQuantity++;
    });
  }

  // decrement
  void decrement() {
    setState(() {
      cartQuantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text(
          "food detail",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                const SizedBox(
                  height: 25,
                ),
                //image
                Image.asset(
                  widget.food.imagePath,
                  height: 250,
                ),
                const SizedBox(
                  height: 25,
                ),

                //rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: primaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.food.rating,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                //title
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 34, color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Description",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                //description
                Text(
                  "Our ${widget.food.name} is prepared with love and care with freshly sourced natural ingredients,Experience the flavors of ${widget.food.name} today. Order yours online or call us to make a reservation.",
                  style: const TextStyle(height: 2, fontSize: 16),
                )
                //add to cart
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Ksh ${widget.food.price}",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Add to Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: secondaryColor,
                          // borderRadius: BorderRadius.circular(25),
                        ),
                        child: IconButton(
                          onPressed: decrement,
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "$cartQuantity",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: secondaryColor,
                        ),
                        child: IconButton(
                          onPressed: increment,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
