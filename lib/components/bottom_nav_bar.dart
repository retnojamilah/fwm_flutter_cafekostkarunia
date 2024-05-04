import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//untuk menampilkan tombol home dan keranjang belanja di layar
class MyBottomNavbar extends StatelessWidget{ // Penggunakan Stateless karena karena icon Shop dan Cart tidak berubah(statis)
  void Function(int)? onTabChange; //Ini adalah deklarasi variabel onTabChange yang merupakan fungsi yang mengambil satu argumen
                                    // bertipe integer dan mengembalikan void. Variabel ini akan digunakan untuk menangani perubahan tab pada navbar.


   MyBottomNavbar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav( //widget dari package google_nav_bar yang digunakan untuk membuat navbar
        onTabChange:(value) => onTabChange!(value),
      color: Colors.grey[400],
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.grey[700],
      tabBackgroundColor: Colors.grey.shade300,
      tabBorderRadius: 24,
      tabActiveBorder: Border.all(color: Colors.white),
      tabs:const[
        GButton( //ni adalah widget dari package google_nav_bar yang digunakan untuk membuat tombol pada navbar
          icon:Icons.home,
          text: 'Shop',
        ), // GButton
        GButton( //ni adalah widget dari package google_nav_bar yang digunakan untuk membuat tombol pada navbar
          icon:Icons.shopping_bag_outlined,
          text: 'Cart',
        ), // GButton
      ],
    )
    );
  }
}