

import 'package:cafekostkarunia/components/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cafekostkarunia/models/coffee.dart';
import 'package:cafekostkarunia/models/coffee_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //menambahkan kopi ke keranjang
  void addToCart(Coffee coffee){
    // menambahkan ke keranjang belanja
  Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);
  //notif untuk kopi telah ditambahkan
  showDialog(context: context, builder: (context)=> AlertDialog(
    title: Text("Berhasil ditambahkan ke Keranjang"),
  )

  );
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Heading message
              Text(
                "Coffee Kost Karunia Yogyakarta?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 25),

              // Daftar kopi yang akan dibeli
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    // Mendapatkan kopi
                    Coffee eachCoffee = value.coffeeShop[index];
                    // Return the tile for this coffee
                    return CoffeeTile( //mengulang perintah dasar/background kopi
                        coffee: eachCoffee,
                        icon: Icon(Icons.add),
                        onPressed: ()=>addToCart(eachCoffee),

                    );

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
