import 'package:cafekostkarunia/home/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cafekostkarunia/home/home_page.dart';
import 'package:cafekostkarunia/models/coffee_shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(), // Fixed typo here
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),// menjadikan intropage / beranda menjadi halaman awal

      ),
    );
  }
}
