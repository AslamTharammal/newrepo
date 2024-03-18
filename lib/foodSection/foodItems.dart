import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../containerSection/itemVerticalList.dart';
import '../containerSection/itemHorizondalList.dart';

class FoodItems extends StatelessWidget {
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
            //height: MediaQuery.of(context).size.width * .5,
            child: ListView(
              padding: const EdgeInsets.all(2),
              scrollDirection: Axis.horizontal,
              children: [
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Peking Roasted Duck.webp',
                    itemName: 'Peking Roasted Duck',
                    itemPrice: 73,
                    itemDescription: 'considered as one of China national dishes. Peking duck is savored for its thin and crispy skin.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Kung Pao Chicken.webp',
                    itemName: 'Kung Pao Chicken',
                    itemPrice: 53,
                    itemDescription: ' The major ingredients are diced chicken, dried chili, cucumber'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Sweet and Sour Pork.webp',
                    itemName: 'Sweet and Sour Pork',
                    itemPrice: 43,
                    itemDescription: ' a delicious sweet and sour taste. At the very beginning '
                        'there was only sweet and sour pork, but to meet demands,'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot Pot',
                    itemPrice: 73,
                    itemDescription: 'People can add and cook whatever they like in the broth. The secret of whether'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sum',
                    itemPrice: 83,
                    itemDescription: ' Popular fillings are minced pork, diced shrimp, ground chicken, beef,'
                        ' and vegetables. Dumplings can be cooked by boiling, steaming, or frying.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Dumplih.webp',
                    itemName: 'Dumplings',
                    itemPrice: 63,
                    itemDescription: 'Dumplings are also a traditional dish eaten on Chinese New Year'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Char Siu.webp',
                    itemName: 'Char Siu',
                    itemPrice: 43,
                    itemDescription: 'In Cantonese, char means  and siu means, '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Sichuan Pork.webp',
                    itemName: ' Sichuan Pork',
                    itemPrice: 63,
                    itemDescription: ' The meaty broth is typical Sichuan cuisine, featuring a peppery'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Twice-Cooked Pork Slices.webp',
                    itemName: 'Pork Slices',
                    itemPrice: 73,
                    itemDescription: 'Su made a delicious pork dish for his friends one day. He was boiling'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Xiaolongbao.webp',
                    itemName: 'Xiaolongbao',
                    itemDescription: 'There is a special way to eat the broth-filled Shanghai steamed-pork xiaolongbao',
                    itemPrice: 70),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Zhajiangmian.webp',
                    itemName: 'Zhajiangmian',
                    itemDescription: 'Originating in Shandong, zhajiangmian was introduced to Beijing by',
                    itemPrice: 83),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Wonton Soup.webp',
                    itemName: 'Wonton Soup',
                    itemDescription: 'Wonton fillings are most often minced pork or diced shrimp. ',
                    itemPrice: 69),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sums',
                    itemDescription: 'Chinese Recipes: An assortment of dumplings made with chicken and prawns. Image credits: iStock',
                    itemPrice: 63),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot and Sour Soup',
                    itemDescription: 'Chinese Recipes: A piping hot bowl of hot and sour soup on a wintery evening is all you need. Image credits',
                    itemPrice: 68),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Quick Noodles.webp',
                    itemName: 'Quick Noodles',
                    itemDescription: 'One of the staples in every home, noodles are not just a kids',
                    itemPrice: 80),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Szechwan Chilli Chicken.webp',
                    itemName: 'Szechwan Chicken',
                    itemDescription: 'A fiery delight straight from the Sichuan region. ',
                    itemPrice: 73),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Spring Rolls.webp',
                    itemName: ' Spring Rolls',
                    itemDescription: 'A crisp appetizer where shredded veggies are encased in thin sheets',
                    itemPrice: 65),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Stir Fried Tofu with Rice.webp',
                    itemName: 'Stir Fried Tofu with Rice',
                    itemDescription: 'A simple stir-fry with tofu and oriental sauces. Sti fried togu',
                    itemPrice: 72),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Veg Hakka Noodles.webp',
                    itemName: 'Veg Hakka Noodles',
                    itemDescription: "'A kid's favourite, veg hakka noodles is a great way to shove all the veggies'",
                    itemPrice: 58),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Peking Roasted Duck.webp',
                    itemName: 'Peking Roasted Duck',
                    itemPrice: 73,
                    itemDescription: 'considered as one of China national dishes. Peking duck is savored for its thin and crispy skin.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Kung Pao Chicken.webp',
                    itemName: 'Kung Pao Chicken',
                    itemPrice: 53,
                    itemDescription: ' The major ingredients are diced chicken, dried chili, cucumber'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Sweet and Sour Pork.webp',
                    itemName: 'Sweet and Sour Pork',
                    itemPrice: 43,
                    itemDescription: ' a delicious sweet and sour taste. At the very beginning '
                        'there was only sweet and sour pork, but to meet demands,'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot Pot',
                    itemPrice: 73,
                    itemDescription: 'People can add and cook whatever they like in the broth. The secret of whether'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sum',
                    itemPrice: 83,
                    itemDescription: ' Popular fillings are minced pork, diced shrimp, ground chicken, beef,'
                        ' and vegetables. Dumplings can be cooked by boiling, steaming, or frying.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Dumplih.webp',
                    itemName: 'Dumplings',
                    itemPrice: 63,
                    itemDescription: 'Dumplings are also a traditional dish eaten on Chinese New Year'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Char Siu.webp',
                    itemName: 'Char Siu',
                    itemPrice: 43,
                    itemDescription: 'In Cantonese, char means  and siu means, '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Sichuan Pork.webp',
                    itemName: ' Sichuan Pork',
                    itemPrice: 63,
                    itemDescription: ' The meaty broth is typical Sichuan cuisine, featuring a peppery'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Twice-Cooked Pork Slices.webp',
                    itemName: 'Pork Slices',
                    itemPrice: 73,
                    itemDescription: 'Su made a delicious pork dish for his friends one day. He was boiling'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/foodimages/Xiaolongbao.webp',
                    itemName: 'Xiaolongbao',
                    itemDescription: 'There is a special way to eat the broth-filled Shanghai steamed-pork xiaolongbao',
                    itemPrice: 70),
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
                    itemImageName: 'assets/images/foodimages/Xiaolongbao.webp',
                    itemName: 'Xiaolongbao',
                    itemDescription: 'There is a special way to eat the broth-filled Shanghai steamed-pork xiaolongbao',
                    itemPrice: 70),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Zhajiangmian.webp',
                    itemName: 'Zhajiangmian',
                    itemDescription: 'Originating in Shandong, zhajiangmian was introduced to Beijing by',
                    itemPrice: 83),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Wonton Soup.webp',
                    itemName: 'Wonton Soup',
                    itemDescription: 'Wonton fillings are most often minced pork or diced shrimp. ',
                    itemPrice: 69),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sums',
                    itemDescription: 'Chinese Recipes: An assortment of dumplings made with chicken and prawns. Image credits: iStock',
                    itemPrice: 63),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot and Sour Soup',
                    itemDescription: 'Chinese Recipes: A piping hot bowl of hot and sour soup on a wintery evening is all you need. Image credits',
                    itemPrice: 68),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Quick Noodles.webp',
                    itemName: 'Quick Noodles',
                    itemDescription: 'One of the staples in every home, noodles are not just a kids',
                    itemPrice: 80),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Szechwan Chilli Chicken.webp',
                    itemName: 'Szechwan Chicken',
                    itemDescription: 'A fiery delight straight from the Sichuan region. ',
                    itemPrice: 73),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Spring Rolls.webp',
                    itemName: ' Spring Rolls',
                    itemDescription: 'A crisp appetizer where shredded veggies are encased in thin sheets',
                    itemPrice: 65),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Stir Fried Tofu with Rice.webp',
                    itemName: 'Stir Fried Tofu with Rice',
                    itemDescription: 'A simple stir-fry with tofu and oriental sauces. Sti fried togu',
                    itemPrice: 72),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Veg Hakka Noodles.webp',
                    itemName: 'Veg Hakka Noodles',
                    itemDescription: "'A kid's favourite, veg hakka noodles is a great way to shove all the veggies'",
                    itemPrice: 58),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Peking Roasted Duck.webp',
                    itemName: 'Peking Roasted Duck',
                    itemPrice: 73,
                    itemDescription: 'considered as one of China national dishes. Peking duck is savored for its thin and crispy skin.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Kung Pao Chicken.webp',
                    itemName: 'Kung Pao Chicken',
                    itemPrice: 53,
                    itemDescription: ' The major ingredients are diced chicken, dried chili, cucumber'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Sweet and Sour Pork.webp',
                    itemName: 'Sweet and Sour Pork',
                    itemPrice: 43,
                    itemDescription: ' a delicious sweet and sour taste. At the very beginning '
                        'there was only sweet and sour pork, but to meet demands,'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot Pot',
                    itemPrice: 73,
                    itemDescription: 'People can add and cook whatever they like in the broth. The secret of whether'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sum',
                    itemPrice: 83,
                    itemDescription: ' Popular fillings are minced pork, diced shrimp, ground chicken, beef,'
                        ' and vegetables. Dumplings can be cooked by boiling, steaming, or frying.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Dumplih.webp',
                    itemName: 'Dumplings',
                    itemPrice: 63,
                    itemDescription: 'Dumplings are also a traditional dish eaten on Chinese New Year'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Char Siu.webp',
                    itemName: 'Char Siu',
                    itemPrice: 43,
                    itemDescription: 'In Cantonese, char means  and siu means, '),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Sichuan Pork.webp',
                    itemName: ' Sichuan Pork',
                    itemPrice: 63,
                    itemDescription: ' The meaty broth is typical Sichuan cuisine, featuring a peppery'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Twice-Cooked Pork Slices.webp',
                    itemName: 'Pork Slices',
                    itemPrice: 73,
                    itemDescription: 'Su made a delicious pork dish for his friends one day. He was boiling'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Xiaolongbao.webp',
                    itemName: 'Xiaolongbao',
                    itemDescription: 'There is a special way to eat the broth-filled Shanghai steamed-pork xiaolongbao',
                    itemPrice: 70),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Zhajiangmian.webp',
                    itemName: 'Zhajiangmian',
                    itemDescription: 'Originating in Shandong, zhajiangmian was introduced to Beijing by',
                    itemPrice: 83),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Wonton Soup.webp',
                    itemName: 'Wonton Soup',
                    itemDescription: 'Wonton fillings are most often minced pork or diced shrimp. ',
                    itemPrice: 69),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sums',
                    itemDescription: 'Chinese Recipes: An assortment of dumplings made with chicken and prawns. Image credits: iStock',
                    itemPrice: 63),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot and Sour Soup',
                    itemDescription: 'Chinese Recipes: A piping hot bowl of hot and sour soup on a wintery evening is all you need. Image credits',
                    itemPrice: 68),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Quick Noodles.webp',
                    itemName: 'Quick Noodles',
                    itemDescription: 'One of the staples in every home, noodles are not just a kids',
                    itemPrice: 80),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Szechwan Chilli Chicken.webp',
                    itemName: 'Szechwan Chicken',
                    itemDescription: 'A fiery delight straight from the Sichuan region. ',
                    itemPrice: 73),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Spring Rolls.webp',
                    itemName: ' Spring Rolls',
                    itemDescription: 'A crisp appetizer where shredded veggies are encased in thin sheets',
                    itemPrice: 65),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Stir Fried Tofu with Rice.webp',
                    itemName: 'Stir Fried Tofu with Rice',
                    itemDescription: 'A simple stir-fry with tofu and oriental sauces. Sti fried togu',
                    itemPrice: 72),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Veg Hakka Noodles.webp',
                    itemName: 'Veg Hakka Noodles',
                    itemDescription: "'A kid's favourite, veg hakka noodles is a great way to shove all the veggies'",
                    itemPrice: 58),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Peking Roasted Duck.webp',
                    itemName: 'Peking Roasted Duck',
                    itemPrice: 73,
                    itemDescription: 'considered as one of China national dishes. Peking duck is savored for its thin and crispy skin.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Kung Pao Chicken.webp',
                    itemName: 'Kung Pao Chicken',
                    itemPrice: 53,
                    itemDescription: ' The major ingredients are diced chicken, dried chili, cucumber'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Sweet and Sour Pork.webp',
                    itemName: 'Sweet and Sour Pork',
                    itemPrice: 43,
                    itemDescription: ' a delicious sweet and sour taste. At the very beginning '
                        'there was only sweet and sour pork, but to meet demands,'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Hot and Sour Soup.webp',
                    itemName: 'Hot Pot',
                    itemPrice: 73,
                    itemDescription: 'People can add and cook whatever they like in the broth. The secret of whether'),
                ItemVerticalList(
                    itemImageName: 'assets/images/foodimages/Dim Sums.webp',
                    itemName: 'Dim Sum',
                    itemPrice: 83,
                    itemDescription: ' Popular fillings are minced pork, diced shrimp, ground chicken, beef,'
                        ' and vegetables. Dumplings can be cooked by boiling, steaming, or frying.'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
