   import 'package:cafekostkarunia/models/coffee.dart';
import 'package:flutter/material.dart';
import 'coffee.dart';


class CoffeeShop extends ChangeNotifier {
// daftar kopi yang dijual
final List<Coffee>_shop=[
  //Kopi hitam
Coffee(
    name :'Kopi Hitam ',
    price:"4ok",
    imagePath:"lib/images/black.png",
    ),
//Latte
Coffee(
name :'Latte ',
price:"45k",
imagePath:"lib/images/latte.png",
),

//americano
Coffee(
name :'Americano ',
price:"50k",
imagePath:"lib/images/americano.png",
),

//Latte
Coffee(
name :'Frapucino ',
price:"65k  ",
imagePath:"lib/images/frapucino.png",
),



];

//penggunaan keranjang belanja
List<Coffee>_userCart=[];



// mendapatkan daftar kopi
List<Coffee> get coffeeShop =>_shop;


//Mendapatkan pengguna cart
    List<Coffee> get userCart=>_userCart;

//menambahkan item di keranjang belanja
    void addItemToCart(Coffee coffee) {
_userCart.add(coffee);
 notifyListeners();

    }

// menghapus item daru keranjang belanja
void removeItemFromCart(Coffee coffee){
        _userCart.remove(coffee);
        notifyListeners();
}

}