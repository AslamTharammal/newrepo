import 'package:flutter/material.dart';

import 'itemPriceDetails.dart';

class BuyItem extends StatelessWidget {
  final String itemName;
  final String itemImageName;
  final double itemPrice;
  final String itemDescription;

  BuyItem({
    required this.itemName,
    required this.itemImageName,
    required this.itemPrice,
    required this.itemDescription,
});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        itemImageName,
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black38,
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                    icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/person avathar.jpg'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 4,
                                    blurRadius: 8,
                                    color: Colors.black87),
                              ],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(90),
                                  bottomLeft: Radius.circular(90),
                                  bottomRight: Radius.circular(90)),
                            ),
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(90),
                                    bottomLeft: Radius.circular(90),
                                    bottomRight: Radius.circular(90)),
                                child: Image.asset(
                                  itemImageName,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.brown.shade800,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                      spreadRadius: 4,
                                      blurRadius: 8,
                                      color: Colors.black87),
                                ]),
                            child: Text(
                              itemName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          SizedBox(
                            height: 40,
                            width: 250,
                            child: SingleChildScrollView(
                              child: Text(
                                itemDescription,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    shadows: [
                                      BoxShadow(
                                          blurRadius: 9,
                                          color: Colors.black87,
                                          spreadRadius: 3),
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ItemPriceDetails(
                  itemName: itemName,
                  itemPrice: itemPrice,
                ),
              ),
            ],
          ),
    );
  }
}
