import 'package:appy_one/components/button.dart';
import 'package:appy_one/components/food_tile.dart';
import 'package:appy_one/models/food.dart';
import 'package:appy_one/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'food_detail.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodMenu = [
    // biriyani
    Food(
        name: "Biriyani",
        imagePath: 'lib/images/biryani.png',
        price: "180",
        rating: "4.9"),
    // rice
    Food(
        name: "Pilau",
        imagePath: "lib/images/rice.png",
        price: "90",
        rating: "4.6"),
    // chapati
    Food(
        name: "Chapati",
        imagePath: "lib/images/chapati.png",
        price: "70",
        rating: "4.7"),
    // tortilla
    Food(
        name: "Anjera",
        imagePath: "lib/images/tortilla.png",
        price: "80",
        rating: "5.0"),
  ];

  void navigateToFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
          food: foodMenu[index]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "Mama J's Menu",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Get 12% Off",
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 24, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                //image
                Image.asset(
                  'lib/images/biryani.png',
                  height: 100,
                )
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  // hoverColor: primaryColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: "Search here.."),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: foodMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                  onTap: () => navigateToFoodDetails(index)),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //popular list
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image
                Image.asset(
                  'lib/images/biryani.png',
                  height: 60,
                ),

                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Biriyani & Chicken',
                      style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ksh 180",
                      style: TextStyle(color: Colors.grey[700], fontSize: 18),
                    )
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
