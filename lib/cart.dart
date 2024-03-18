import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.brown,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text('sdf',style: TextStyle(fontSize: 50,color: Colors.red),),
        ),
      ),
    );
  }
}
