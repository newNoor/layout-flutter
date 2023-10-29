import 'package:appy_one/components/button.dart';
import 'package:appy_one/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              //Shop name
              Text(
                "MAMA J's",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 34, color: Colors.white),
              ),

              const SizedBox(
                height: 25,
              ),
              //icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/tortilla.png'),
              ),

              const SizedBox(
                height: 25,
              ),
              //title
              Text(
                "THE TASTE OF UMMA UNIVERSITY FOOD",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 34, color: Colors.white),
              ),

              const SizedBox(
                height: 25,
              ),
              // subtitle
              Text(
                "Feel the taste of Umma University cuisine with, prepared with passion and served with love",
                style: TextStyle(color: Colors.grey[100], height: 2),
              ),
              const SizedBox(
                height: 25,
              ),
              //get started button
            MyButton(
                  text: "Get Started",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/menupage'
                    );
                  }),
            ],
          ),
        ));
  }
}
