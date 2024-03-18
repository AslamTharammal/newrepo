import 'package:coffee_place/buyingSection/buyItem.dart';
import 'package:flutter/material.dart';

class ItemVerticalList extends StatelessWidget {
  final String itemImageName;
  final String itemName;
  final String itemDescription;
  final double itemPrice;
  ItemVerticalList(
      {required this.itemImageName,
      required this.itemName,
      required this.itemDescription,
      required this.itemPrice,
     });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
      splashColor: Colors.black12,
      highlightColor: Colors.black12,
      padding: const EdgeInsets.all(5),
      onPressed: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => BuyItem(
            itemName: itemName,
            itemImageName: itemImageName,
            itemPrice: itemPrice,
            itemDescription: itemDescription),),);
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            boxShadow: [
              BoxShadow(blurRadius: 3, spreadRadius: 2, color: Colors.black38)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 90,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                ),
                child: Image.asset(
                  itemImageName,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 140,
                    height: 25,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Text(
                          itemDescription,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '\$$itemPrice',
              style: const TextStyle(fontSize: 17, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
