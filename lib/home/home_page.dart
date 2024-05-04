import 'package:cafekostkarunia/components/bottom_nav_bar.dart';
import 'package:cafekostkarunia/home/cart_page.dart';
import 'package:cafekostkarunia/home/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:cafekostkarunia/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State <HomePage> createState()=> _HomePageState();

}

class _HomePageState extends State<HomePage> {

  //navigasi bar tombol
  int _selectedIndex=0;
  void navigateBottombar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
//Halaman Utama
  final List<Widget> _home=[
    // halaman belanja
    ShopPage(),


    //Halaman Keranjang Belanja
    CartPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavbar(
        onTabChange:(index)=> navigateBottombar(index),
      ),
      body: _home[_selectedIndex],
    );


  }
}