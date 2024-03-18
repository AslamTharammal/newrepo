import 'package:flutter/material.dart';

import '../buyingSection/buyItem.dart';

class ItemHorizontalList extends StatelessWidget {
  final String itemImageName;
  final String itemName;
  final double itemPrice;
  final String itemDescription;
  ItemHorizontalList({
    required this.itemImageName,
    required this.itemName,
    required this.itemPrice,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BuyItem(
               itemName: itemName,
                itemImageName: itemImageName,
                itemPrice: itemPrice,
                itemDescription: itemDescription,
              ),
            ));
      },
      splashColor: Colors.black12,
      highlightColor: Colors.black12,
      padding: const EdgeInsets.all(5),
      child: Container(
        height: MediaQuery.of(context).size.width * .5,
        width: MediaQuery.of(context).size.width * .4 + 24,
        decoration: BoxDecoration(
          color: Colors.brown[500],
          // border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2, blurRadius: 3, color: Colors.brown.shade900)
          ],
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              width: 180,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
                child: Image.asset(itemImageName, fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20,
              child: Text(
                itemName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              '\$$itemPrice',
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
