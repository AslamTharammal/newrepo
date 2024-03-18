
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../containerSection/itemHorizondalList.dart';
import '../containerSection/itemVerticalList.dart';

class ChocolateItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.brown,
      backgroundColor: Colors.white,
      displacement: 50,
      edgeOffset: 3,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      strokeWidth: 3,
      onRefresh: () {
        return Future.delayed(Duration(seconds: 1));
      },
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .5,
            child: ListView(
              padding: const EdgeInsets.all(2),
              scrollDirection: Axis.horizontal,
              children: [
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate1.jpg',
                    itemName: 'Cadbury Bournville',
                    itemPrice: 23,
                    itemDescription: 'the top French chocolatiers. '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate2.jpg',
                    itemName: 'Cadbury Dairy milk',
                    itemPrice: 33,
                    itemDescription: 'Gorgeous packaging is also a factor in'
                        ' the pricing, but once you taste it'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate3.jpg',
                    itemName: 'Pacari Passion ',
                    itemPrice: 23,
                    itemDescription: 'Give their cheesecake or cotton candy a try, you won’t'
                        'find it elsewhere.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate4.jpg',
                    itemName: 'Lotte Chocopie',
                    itemPrice: 40,
                    itemDescription: 'They use the best natural ingredients, and are well known for their'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate5.jpg',
                    itemName: 'Esthechoc',
                    itemPrice: 35,
                    itemDescription: ' most popular chocolate brands in the world'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate6.jpg',
                    itemName: ' Flying Noir',
                    itemPrice: 23,
                    itemDescription: ' most popular chocolate brands in the world'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate7.jpg',
                    itemName: 'Droste',
                    itemPrice: 20,
                    itemDescription: 'This Californian company offers chocolate that is hand painted '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate8.jpg',
                    itemName: 'Whittaker’s',
                    itemPrice: 31,
                    itemDescription: 'New Zealand-based chocolate brand that '
                        'was founded in 1896 by James Henry Whittaker. '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate10.jpg',
                    itemName: 'Amedei',
                    itemPrice: 23,
                    itemDescription: 'dedicated to sourcing the finest cocoa '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate9.jpg',
                    itemName: 'Jacques Genin',
                    itemPrice: 29,
                    itemDescription: 'most delicious chocolates in the world'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate10.jpg',
                    itemName: 'Richart',
                    itemPrice: 29,
                    itemDescription: 'France’s Ruban Bleu seven times, a confectioner’s most prestigious honor.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate11.jpg',
                    itemName: 'Patchi',
                    itemDescription: 'the best luxury chocolate brands in the world. '
                        'It is a combination of Belgian ',
                    itemPrice: 32),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate12.jpg',
                    itemName: 'Teuscher',
                    itemDescription: 'They use the best natural ingredients,'
                        ' and are well known for their marzipan',
                    itemPrice: 52),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate13.jpg',
                    itemName: 'Valrhona',
                    itemDescription: 'Considered the Rolls Royce of chocolate, French brand',
                    itemPrice: 38),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate14.jpg',
                    itemName: 'Dove',
                    itemDescription: 'Owned by Mars, this American chocolate'
                        ' brand is responsible for bringing',
                    itemPrice: 30),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate15.jpg',
                    itemName: 'Russell Stover',
                    itemDescription: 'One of the only companies that specialize'
                        ' in sugar-free chocolates, ',
                    itemPrice: 30),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/11.jpg',
                    itemName: 'Ritter Sport',
                    itemDescription: ' Waldenbuch in 1912, and by 1926 they had 80 employees. ',
                    itemPrice: 26),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate16.jpg',
                    itemName: 'Guylian',
                    itemDescription: 'Aside from the famous seashells, they do make individually'
                        ' wrapped truffles and bars with other',
                    itemPrice: 38),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate17.jpg',
                    itemName: 'Kinder',
                    itemDescription: 'The brand caters to children and inside each Kinder',
                    itemPrice: 30),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate18.jpg',
                    itemName: 'Mars',
                    itemDescription: 'Mars is one of the largest chocolate companies in the world',
                    itemPrice: 42),
                ItemHorizontalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate19.jpg',
                    itemName: 'Toblerone',
                    itemDescription: 'The almond nougat and honey give it its distinguished taste ',
                    itemPrice: 29),

              ],
            ),
          ),
          Expanded(
           // height: MediaQuery.of(context).size.height / 2 - 10,
            child: ListView(
              padding: const EdgeInsets.only(left: 4, right: 4),
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 9, top: 5),
                  child: Text(
                    'For You',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate11.jpg',
                    itemName: 'Patchi',
                    itemDescription: 'the best luxury chocolate brands in the world. '
                        'It is a combination of Belgian ',
                    itemPrice: 32),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate12.jpg',
                    itemName: 'Teuscher',
                    itemDescription: 'They use the best natural ingredients,'
                        ' and are well known for their marzipan',
                    itemPrice: 52),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate13.jpg',
                    itemName: 'Valrhona',
                    itemDescription: 'Considered the Rolls Royce of chocolate, French brand',
                    itemPrice: 38),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate14.jpg',
                    itemName: 'Dove',
                    itemDescription: 'Owned by Mars, this American chocolate'
                        ' brand is responsible for bringing',
                    itemPrice: 30),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate15.jpg',
                    itemName: 'Russell Stover',
                    itemDescription: 'One of the only companies that specialize'
                        ' in sugar-free chocolates, ',
                    itemPrice: 30),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/11.jpg',
                    itemName: 'Ritter Sport',
                    itemDescription: ' Waldenbuch in 1912, and by 1926 they had 80 employees. ',
                    itemPrice: 26),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate16.jpg',
                    itemName: 'Guylian',
                    itemDescription: 'Aside from the famous seashells, they do make individually'
                        ' wrapped truffles and bars with other',
                    itemPrice: 38),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate17.jpg',
                    itemName: 'Kinder',
                    itemDescription: 'The brand caters to children and inside each Kinder',
                    itemPrice: 30),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate18.jpg',
                    itemName: 'Mars',
                    itemDescription: 'Mars is one of the largest chocolate companies in the world',
                    itemPrice: 42),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate19.jpg',
                    itemName: 'Toblerone',
                    itemDescription: 'The almond nougat and honey give it its distinguished taste ',
                    itemPrice: 29),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate1.jpg',
                    itemName: 'Cadbury Bournville',
                    itemPrice: 23,
                    itemDescription: 'the top French chocolatiers. '),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate2.jpg',
                    itemName: 'Cadbury Dairy milk',
                    itemPrice: 33,
                    itemDescription: 'Gorgeous packaging is also a factor in'
                        ' the pricing, but once you taste it'),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate3.jpg',
                    itemName: 'Pacari Passion ',
                    itemPrice: 23,
                    itemDescription: 'Give their cheesecake or cotton candy a try, you won’t'
                        'find it elsewhere.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate4.jpg',
                    itemName: 'Lotte Chocopie',
                    itemPrice: 40,
                    itemDescription: 'They use the best natural ingredients, and are well known for their'),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate5.jpg',
                    itemName: 'Esthechoc',
                    itemPrice: 35,
                    itemDescription: ' most popular chocolate brands in the world'),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate6.jpg',
                    itemName: ' Flying Noir',
                    itemPrice: 23,
                    itemDescription: ' most popular chocolate brands in the world'),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate7.jpg',
                    itemName: 'Droste',
                    itemPrice: 20,
                    itemDescription: 'This Californian company offers chocolate that is hand painted '),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate8.jpg',
                    itemName: 'Whittaker’s',
                    itemPrice: 31,
                    itemDescription: 'New Zealand-based chocolate brand that '
                        'was founded in 1896 by James Henry Whittaker. '),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate10.jpg',
                    itemName: 'Amedei',
                    itemPrice: 23,
                    itemDescription: 'dedicated to sourcing the finest cocoa '),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate9.jpg',
                    itemName: 'Jacques Genin',
                    itemPrice: 29,
                    itemDescription: 'most delicious chocolates in the world'),
                ItemVerticalList(
                    itemImageName: 'assets/images/chocolatesimages/chocolate10.jpg',
                    itemName: 'Richart',
                    itemPrice: 29,
                    itemDescription: 'France’s Ruban Bleu seven times, a confectioner’s most prestigious honor.'),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
