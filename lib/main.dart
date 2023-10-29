import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';
import 'pages/food_detail.dart';
import 'package:appy_one/pages/food_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        // '/fooddetail': (context) => const DetailPage(index),

      },
    );
  }
}
