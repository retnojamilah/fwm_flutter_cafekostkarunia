import 'package:cafekostkarunia/models/coffee.dart';
import 'package:flutter/material.dart';
// syntax dibawah ini digunakan untuk membuat dasar kopi yang berisi gambar kopi dan tanda +
class CoffeeTile extends StatefulWidget {
  final Coffee coffee;
  final VoidCallback onPressed; // mendefinisikan fungsi onPressed
  final Widget icon;

    CoffeeTile({super.key,
      required this.coffee,
      required this.onPressed,
    required this.icon});

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();// method yang mengoverride method dari superclass StatefulWidget
                                                        // untuk membuat dan mengembalikan instance dari _CoffeeTileState.
}

class _CoffeeTileState extends State<CoffeeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),//Box Decoration
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical:25,horizontal: 10),
      child: ListTile(
        title: Text(widget.coffee.name), // mengambil data kopi dari widget secara instan
        subtitle: Text(widget.coffee.price),
        leading: Image.asset(widget.coffee.imagePath),
        trailing: IconButton(
          icon: widget.icon,
          onPressed: widget.onPressed,
        ),
      ),
    );//ListTile
  }
}
