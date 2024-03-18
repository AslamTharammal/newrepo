import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../containerSection/itemVerticalList.dart';
import '../containerSection/itemHorizondalList.dart';

class CoffeeItems extends StatelessWidget {
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(2),
              scrollDirection: Axis.horizontal,
              children: [
                ItemHorizontalList(
                  itemName: 'Drip Coffee',
                  itemPrice: 20,
                  itemImageName: 'assets/images/French Press.jpg',
                  itemDescription: 'A classic coffee maker, the drip coffee machine makes '
                      'coffee by pumping hot water up to a filter basket where it combines with ground coffee.',
                ),
                ItemHorizontalList(
                  itemName: 'Black Coffee',
                  itemPrice: 8,
                  itemImageName: 'assets/images/black coffe.webp',
                  itemDescription: 'A classic coffee maker, the drip coffee machine makes coffee by pumping hot water '
                      'up to a filter basket where it combines with ground coffee',
                ),
                ItemHorizontalList(
                  itemName: 'Espresso Coffee',
                  itemPrice: 10,
                  itemImageName: 'assets/images/Espresso Coffee.webp',
                  itemDescription: 'The cortado is simply an espresso shot served with equal parts steamed milk to help reduce the acidity.'
                      ' There’s no milk foam added so it’s a very smooth drink.'
                      ' It can be served as a single or double-shot espresso.',
                ),
                ItemHorizontalList(
                  itemName: 'Cold Coffee',
                  itemPrice: 13,
                  itemImageName: 'assets/images/Cold Coffee.webp',
                  itemDescription: 'Iced coffee is simply hot-brewed coffee served over ice. '
                      'It can be brewed in any manner you like but is often very strong so the ice doesn’t dilute the flavor too much.',
                ),
                ItemHorizontalList(
                  itemName: 'Something Sweet',
                  itemPrice: 13,
                  itemImageName: 'assets/images/Something Sweet.webp',
                  itemDescription: 'There are loads of different ways to make a mocha but essentially it’s coffee combined with chocolate.'
                      ' It can be hot cocoa made with '
                      'warm milk and a shot of espresso added or a cafe latte with chocolate syrup or dark chocolate melted into it.',
                ),
                ItemHorizontalList(
                  itemName: 'Alcohol and Coffee',
                  itemPrice: 28,
                  itemImageName: 'assets/images/Alcohol and Coffee.webp',
                  itemDescription: 'Black coffee mixed with sugar and a shot of Irish whiskey then topped with heavy cream,'
                      ' gently poured over a spoon to ensure it floats on the surface',
                ),
                ItemHorizontalList(
                  itemName: 'Bulletproof Coffee',
                  itemPrice: 18,
                  itemImageName: 'assets/images/Bulletproof Coffee.webp',
                  itemDescription: 'A keto fad, bulletproof coffee is a combination of black coffee, grass-fed cows butter, and MCT oil.',
                ),
                ItemHorizontalList(
                  itemName: 'Cha Phe Sua Da ',
                  itemPrice: 16,
                  itemImageName: 'assets/images/Cha Phe Sua Da.jpeg',
                  itemDescription: 'This drink is made from very dark roast, '
                      'Vietnamese coffee beans brewed with a Vietnamese metal filter (Phin) to give a very strong brew.',
                ),
                ItemHorizontalList(
                  itemName: 'Something',
                  itemPrice: 10,
                  itemImageName: 'assets/images/coffee1.jpg',
                  itemDescription: 'elted into it.',
                ),ItemHorizontalList(
                  itemName: 'Irish Coffee',
                  itemPrice: 20,
                  itemImageName: 'assets/images/Irish Coffee.jpeg',
                  itemDescription: 'Black coffee mixed with sugar and a shot of Irish whiskey then topped with heavy cream.',
                ),ItemHorizontalList(
                  itemName: 'Caffe Correcto',
                  itemPrice: 25,
                  itemImageName: 'assets/images/Caffe Correcto.webp',
                  itemDescription: 'Italian for coffee corrected, this drink is a shot of espresso served with alcohol.'
                      ' Typically this would be grappa, brandy',
                ),
                ItemHorizontalList(
                  itemName: 'Coffee Liqueur',
                  itemPrice: 30,
                  itemImageName: 'assets/images/Coffee Liqueur.jpeg',
                  itemDescription: 'There are hundreds of combinations of different types of alcohol mixed with coffee. .',
                ),
                ItemHorizontalList(
                  itemName: 'Mocha',
                  itemPrice: 15,
                  itemImageName: 'assets/images/Mocha.jpeg',
                  itemDescription: 'There are loads of different ways to make a mocha but essentially it’s coffee combined with chocolate. ',
                ),ItemHorizontalList(
                  itemName: 'Affogato',
                  itemPrice: 10,
                  itemImageName: 'assets/images/Affogato.jpeg',
                  itemDescription: ' delicious dessert, affogato is a shot of espresso served with vanilla ice cream. ',
                ),
                ItemHorizontalList(
                  itemName: 'Moka Pot',
                  itemPrice: 12,
                  itemImageName: 'assets/images/Moka Pot.jpg',
                  itemDescription: 'Also known as a stove-top espresso maker the Moka pot works by using steam pressure to brew coffee ',
                ),
                ItemHorizontalList(
                  itemName: 'French Press',
                  itemPrice: 17,
                  itemImageName: 'assets/images/Drip Coffee.jpg',
                  itemDescription: 'This is a very straightforward brew method where coarsely ground coffee ',
                ),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Ristretto.jpg',
                    itemName: 'Ristretto',
                    itemDescription: 'simply the first half of a full espresso shot while using the same amount of coffee grounds',
                    itemPrice: 32),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Doppio.jpg',
                    itemName: 'Doppio',
                    itemDescription: 'In Italian “doppio” means “double,” it means you want double shots of espresso.',
                    itemPrice: 12),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Americano.jpg',
                    itemName: 'Americano',
                    itemDescription: 'At first, it’s thought to call “Caffe Americano,” '
                        'but over the years it has been shortened to just “Americano.”',
                    itemPrice: 19),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Lungo.jpg',
                    itemName: 'Lungo',
                    itemDescription: 'Unlike ristretto, it means “long” because you’ll get the espresso drink with much more water,'
                        ' which generally results in a long cup of java.',
                    itemPrice: 22),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Caffé Crema.jpg',
                    itemName: 'Caffé Crema',
                    itemDescription: 'You’ll find Caffé Crema very uncommon in the Caffe menus if you belong to the English-speaking world',
                    itemPrice: 12),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Café Zorro.jpg',
                    itemName: 'Café Zorro',
                    itemDescription: 'pretty much similar to Americano but it still poles apart. The major difference is that Café Zorro contains double',
                    itemPrice: 23),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Café Cubano.jpg',
                    itemName: 'Café Cubano',
                    itemDescription: 'As the name indicates, this drink is originated from Cuba and referring '
                        'this type of coffee, means, you’re demanding for an espresso shot that’s sweetened',
                    itemPrice: 20),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Latte.jpg',
                    itemName: 'Latte',
                    itemDescription: 'The drink you may find most stylish on the coffee menu or get your immediate attention while '
                        'scrolling down Instagram feed is the “Latte” which is also known as “Caffe latte”',
                    itemPrice: 30),
                ItemHorizontalList(
                    itemImageName: 'assets/images/picaolate.jpg',
                    itemName: 'Piccolo Latte',
                    itemDescription: 'The ristretto shot (15 – 20 ml) topped with warm, silky milk will give you another version, '
                        'Piccolo Latte in a Duralex demitasse cup of coffee.',
                    itemPrice: 16),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Macchiato.jpg',
                    itemName: 'Macchiato',
                    itemDescription: 'Pretty much similar to cappuccino, Café Macchiato will be served in a small cup if you request for it.',
                    itemPrice: 27),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Cortado.jpg',
                    itemName: 'Cortado',
                    itemDescription: 'Espresso shot mixed with a roughly equal amount of steamed milk will make you Cortado coffee.'
                        ' The milk in this drink is steamed but not frothy ',
                    itemPrice: 22),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Café Bombon.jpg',
                    itemName: 'Café Bombon',
                    itemDescription: 'Bonbon coffee is the result of a topping of espresso on roughly equal amounts of condensed milk.',
                    itemPrice: 30),
                ItemHorizontalList(
                    itemImageName: 'assets/images/Carajillo.jpg',
                    itemName: 'Carajillo',
                    itemDescription: 'Spanish hot coffee with a combination of espresso and hard liquor, '
                        'most often brandy, whiskey, rum or aguardiente.',
                    itemPrice: 32),






              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 10,
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
                    itemImageName: 'assets/images/Ristretto.jpg',
                    itemName: 'Ristretto',
                    itemDescription: 'simply the first half of a full espresso shot while using the same amount of coffee grounds',
                    itemPrice: 32),
                ItemVerticalList(
                    itemImageName: 'assets/images/Doppio.jpg',
                    itemName: 'Doppio',
                    itemDescription: 'In Italian “doppio” means “double,” it means you want double shots of espresso.',
                    itemPrice: 12),
                ItemVerticalList(
                    itemImageName: 'assets/images/Americano.jpg',
                    itemName: 'Americano',
                    itemDescription: 'At first, it’s thought to call “Caffe Americano,” '
                        'but over the years it has been shortened to just “Americano.”',
                    itemPrice: 19),
                ItemVerticalList(
                    itemImageName: 'assets/images/Lungo.jpg',
                    itemName: 'Lungo',
                    itemDescription: 'Unlike ristretto, it means “long” because you’ll get the espresso drink with much more water,'
                        ' which generally results in a long cup of java.',
                    itemPrice: 22),
                ItemVerticalList(
                    itemImageName: 'assets/images/Caffé Crema.jpg',
                    itemName: 'Caffé Crema',
                    itemDescription: 'You’ll find Caffé Crema very uncommon in the Caffe menus if you belong to the English-speaking world',
                    itemPrice: 12),
                ItemVerticalList(
                    itemImageName: 'assets/images/Café Zorro.jpg',
                    itemName: 'Café Zorro',
                    itemDescription: 'pretty much similar to Americano but it still poles apart. The major difference is that Café Zorro contains double',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/Café Cubano.jpg',
                    itemName: 'Café Cubano',
                    itemDescription: 'As the name indicates, this drink is originated from Cuba and referring '
                        'this type of coffee, means, you’re demanding for an espresso shot that’s sweetened',
                    itemPrice: 20),
                ItemVerticalList(
                    itemImageName: 'assets/images/Latte.jpg',
                    itemName: 'Latte',
                    itemDescription: 'The drink you may find most stylish on the coffee menu or get your immediate attention while '
                        'scrolling down Instagram feed is the “Latte” which is also known as “Caffe latte”',
                    itemPrice: 30),
                ItemVerticalList(
                    itemImageName: 'assets/images/picaolate.jpg',
                    itemName: 'Piccolo Latte',
                    itemDescription: 'The ristretto shot (15 – 20 ml) topped with warm, silky milk will give you another version, '
                        'Piccolo Latte in a Duralex demitasse cup of coffee.',
                    itemPrice: 16),
                ItemVerticalList(
                    itemImageName: 'assets/images/Macchiato.jpg',
                    itemName: 'Macchiato',
                    itemDescription: 'Pretty much similar to cappuccino, Café Macchiato will be served in a small cup if you request for it.',
                    itemPrice: 27),
                ItemVerticalList(
                    itemImageName: 'assets/images/Cortado.jpg',
                    itemName: 'Cortado',
                    itemDescription: 'Espresso shot mixed with a roughly equal amount of steamed milk will make you Cortado coffee.'
                        ' The milk in this drink is steamed but not frothy ',
                    itemPrice: 22),
                ItemVerticalList(
                    itemImageName: 'assets/images/Café Bombon.jpg',
                    itemName: 'Café Bombon',
                    itemDescription: 'Bonbon coffee is the result of a topping of espresso on roughly equal amounts of condensed milk.',
                    itemPrice: 30),
                ItemVerticalList(
                    itemImageName: 'assets/images/Carajillo.jpg',
                    itemName: 'Carajillo',
                    itemDescription: 'Spanish hot coffee with a combination of espresso and hard liquor, '
                        'most often brandy, whiskey, rum or aguardiente.',
                    itemPrice: 32),
                ItemVerticalList(
                  itemName: 'Drip Coffee',
                  itemPrice: 20,
                  itemImageName: 'assets/images/French Press.jpg',
                  itemDescription: 'A classic coffee maker, the drip coffee machine makes '
                      'coffee by pumping hot water up to a filter basket where it combines with ground coffee.',
                ),
                ItemVerticalList(
                  itemName: 'Black Coffee',
                  itemPrice: 8,
                  itemImageName: 'assets/images/black coffe.webp',
                  itemDescription: 'A classic coffee maker, the drip coffee machine makes coffee by pumping hot water '
                      'up to a filter basket where it combines with ground coffee',
                ),
                ItemVerticalList(
                  itemName: 'Espresso Coffee',
                  itemPrice: 10,
                  itemImageName: 'assets/images/Espresso Coffee.webp',
                  itemDescription: 'The cortado is simply an espresso shot served with equal parts steamed milk to help reduce the acidity.'
                      ' There’s no milk foam added so it’s a very smooth drink.'
                      ' It can be served as a single or double-shot espresso.',
                ),
                ItemVerticalList(
                  itemName: 'Cold Coffee',
                  itemPrice: 13,
                  itemImageName: 'assets/images/Cold Coffee.webp',
                  itemDescription: 'Iced coffee is simply hot-brewed coffee served over ice. '
                      'It can be brewed in any manner you like but is often very strong so the ice doesn’t dilute the flavor too much.',
                ),
                ItemVerticalList(
                  itemName: 'Something Sweet',
                  itemPrice: 13,
                  itemImageName: 'assets/images/Something Sweet.webp',
                  itemDescription: 'There are loads of different ways to make a mocha but essentially it’s coffee combined with chocolate.'
                      ' It can be hot cocoa made with '
                      'warm milk and a shot of espresso added or a cafe latte with chocolate syrup or dark chocolate melted into it.',
                ),
                ItemVerticalList(
                  itemName: 'Alcohol and Coffee',
                  itemPrice: 28,
                  itemImageName: 'assets/images/Alcohol and Coffee.webp',
                  itemDescription: 'Black coffee mixed with sugar and a shot of Irish whiskey then topped with heavy cream,'
                      ' gently poured over a spoon to ensure it floats on the surface',
                ),
                ItemVerticalList(
                  itemName: 'Bulletproof Coffee',
                  itemPrice: 18,
                  itemImageName: 'assets/images/Bulletproof Coffee.webp',
                  itemDescription: 'A keto fad, bulletproof coffee is a combination of black coffee, grass-fed cows butter, and MCT oil.',
                ),
                ItemVerticalList(
                  itemName: 'Cha Phe Sua Da ',
                  itemPrice: 16,
                  itemImageName: 'assets/images/Cha Phe Sua Da.jpeg',
                  itemDescription: 'This drink is made from very dark roast, '
                      'Vietnamese coffee beans brewed with a Vietnamese metal filter (Phin) to give a very strong brew.',
                ),
                ItemVerticalList(
                  itemName: 'Something',
                  itemPrice: 10,
                  itemImageName: 'assets/images/coffee1.jpg',
                  itemDescription: 'elted into it.',
                ),ItemVerticalList(
                  itemName: 'Irish Coffee',
                  itemPrice: 20,
                  itemImageName: 'assets/images/Irish Coffee.jpeg',
                  itemDescription: 'Black coffee mixed with sugar and a shot of Irish whiskey then topped with heavy cream.',
                ),ItemVerticalList(
                  itemName: 'Caffe Correcto',
                  itemPrice: 25,
                  itemImageName: 'assets/images/Caffe Correcto.webp',
                  itemDescription: 'Italian for coffee corrected, this drink is a shot of espresso served with alcohol.'
                      ' Typically this would be grappa, brandy',
                ),
                ItemVerticalList(
                  itemName: 'Coffee Liqueur',
                  itemPrice: 30,
                  itemImageName: 'assets/images/Coffee Liqueur.jpeg',
                  itemDescription: 'There are hundreds of combinations of different types of alcohol mixed with coffee. .',
                ),
                ItemVerticalList(
                  itemName: 'Mocha',
                  itemPrice: 15,
                  itemImageName: 'assets/images/Mocha.jpeg',
                  itemDescription: 'There are loads of different ways to make a mocha but essentially it’s coffee combined with chocolate. ',
                ),ItemVerticalList(
                  itemName: 'Affogato',
                  itemPrice: 10,
                  itemImageName: 'assets/images/Affogato.jpeg',
                  itemDescription: ' delicious dessert, affogato is a shot of espresso served with vanilla ice cream. ',
                ),
                ItemVerticalList(
                  itemName: 'Moka Pot',
                  itemPrice: 12,
                  itemImageName: 'assets/images/Moka Pot.jpg',
                  itemDescription: 'Also known as a stove-top espresso maker the Moka pot works by using steam pressure to brew coffee ',
                ),
                ItemVerticalList(
                  itemName: 'French Press',
                  itemPrice: 17,
                  itemImageName: 'assets/images/Drip Coffee.jpg',
                  itemDescription: 'This is a very straightforward brew method where coarsely ground coffee ',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
