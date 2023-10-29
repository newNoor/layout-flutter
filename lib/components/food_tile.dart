import 'package:appy_one/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appy_one/theme/colors.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Row(
              children: [
                // const Padding(padding: EdgeInsets.only(bottom: 35)),
                Image.asset(
                  food.imagePath,
                  height: 150,
                ),
              ],
            ),
            //   text
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 24),
            ),
            //   price + rating
            SizedBox(
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ksh ${food.price}',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: primaryColor,
                        size: 18,
                      ),
                      Text(
                        food.rating,
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
