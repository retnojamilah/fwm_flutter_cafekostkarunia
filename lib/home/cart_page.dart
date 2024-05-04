import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cafekostkarunia/components/coffee_tile.dart';
import 'package:cafekostkarunia/models/coffee.dart';
import 'package:cafekostkarunia/models/coffee_shop.dart';

 // syntax untuk halaman  keranjang belanja
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Menghapus item di keranjang belanja
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  // Pay button tapped
  void payNow() {
    // Implement your payment logic here
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Heading
              Text(
                'Pesanan Anda',
                style: TextStyle(fontSize: 20),
              ),
              // Daftar item di dalam keranjang belanja
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    // Get individual cart items
                    Coffee eachCoffee = value.userCart[index];
                    // Return coffee tile
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: Icon(Icons.delete),
                    );
                  },
                ),
              ),
              // Pay Button
              GestureDetector( // penggunakan Gesturedetector lihat diyoutube aja pak,,belum paham
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(12), // spesifikasi borderradius
                  ),
                  child: const Center(
                    child: Text(
                      "Bayar Sekarang",    //hanya tulisan belum sampai transaksi bayar
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
