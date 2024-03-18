import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../containerSection/itemHorizondalList.dart';
import '../containerSection/itemVerticalList.dart';

class TeaItems extends StatelessWidget {
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
                    itemImageName: 'assets/images/tea_images/Artichoke Tea.jpg',
                    itemName: ' Artichoke Tea',
                    itemPrice: 22,
                    itemDescription: 'Artichoke tea is definitely one of the lesser-known tea varieties,'
                        ' but it does not involve the actual vegetable itself.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Barley Tea.jpg',
                    itemName: 'Barley Tea',
                    itemPrice: 31,
                    itemDescription: 'Barley tea enjoys the most popularity in East Asia,'
                        ' and it’s a staple drink in China, Japan, and Korea.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Black Tea.jpg',
                    itemName: 'Black Tea',
                    itemPrice: 8,
                    itemDescription: 'Made with the leaves of the Camellia sinensis plant, black tea is a true tea.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Brown Rice Tea.jpg',
                    itemName: 'Brown Rice Tea',
                    itemPrice: 32,
                    itemDescription: 'Brown rice tea originates in Korea and it simply involves steeping teabags '
                        'that contain roasted grains of brown rice in boiling water.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chaga Tea.jpg',
                    itemName: 'Chaga Tea',
                    itemPrice: 35,
                    itemDescription: 'Many mushrooms have medicinal properties, but have you ever tried mushroom '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chai Tea.jpg',
                    itemName: 'Chai Tea',
                    itemPrice: 18,
                    itemDescription: 'Chai is a combination of black tea, steamed milk, and various Indian herbs and spices'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chamomile Tea.jpg',
                    itemName: 'Chamomile Tea',
                    itemPrice: 12,
                    itemDescription: 'Chamomile tea comes from the edible flowers of the '
                        'Matricaria chamomilla plant, otherwise known as chamomile.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Green Tea.jpg',
                    itemName: 'Green Tea',
                    itemDescription: 'While black tea is the popular choice in the'
                        ' Western world, green tea dominates the East, especially in Japan.',
                    itemPrice: 16),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Dandelion Tea.jpg',
                    itemName: 'Dandelion Tea',
                    itemPrice: 34,
                    itemDescription: 'For those of you with a garden, you can probably spot some dandelions from time to time.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Essiac Tea.jpg',
                    itemName: 'Essiac Tea',
                    itemDescription: 'Essiac tea is a traditional drink of the Ojibwa,'
                        ' a North American Indian tribe also known as the Chippewa.',
                    itemPrice: 23),
                ItemHorizontalList(
                    itemImageName: 'assets/images/coffee7.jpg',
                    itemName: 'Chrysanthemum Tea',
                    itemPrice: 38,
                    itemDescription: 'Chrysanthemums are flowering plants that originate in '
                        'East Asia, and we can mainly find them in China.'
                ),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/hibcestea.jpg',
                    itemName: 'Hibiscus Tea',
                    itemDescription: 'Otherwise known as Agua De Jamaica, hibiscus is a tea made from the dried petals of the roselle flower.',
                    itemPrice: 23),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Honeybush Tea.jpg',
                    itemName: 'Honeybush Tea',
                    itemDescription: 'Honeybush tea is a lesser-known cousin to the popular rooibos (or “redbush”) tea.',
                    itemPrice: 29),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Lemon balm Tea.jpg',
                    itemName: 'Lemon balm Tea',
                    itemDescription: 'Lemon balm tea is a refreshing drink made from the leaves of the lemon'
                        ' balm plant, also known by the scientific name Melissa officinalis.',
                    itemPrice: 23),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Dandelion Tea.jpg',
                    itemName: 'Dandelion Tea',
                    itemPrice: 34,
                    itemDescription: 'For those of you with a garden, you can probably spot some dandelions from time to time.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chamomile Tea.jpg',
                    itemName: 'Chamomile Tea',
                    itemPrice: 12,
                    itemDescription: 'Chamomile tea comes from the edible flowers of the '
                        'Matricaria chamomilla plant, otherwise known as chamomile.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chai Tea.jpg',
                    itemName: 'Chai Tea',
                    itemPrice: 18,
                    itemDescription: 'Chai is a combination of black tea, steamed milk, and various Indian herbs and spices'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Artichoke Tea.jpg',
                    itemName: ' Artichoke Tea',
                    itemPrice: 22,
                    itemDescription: 'Artichoke tea is definitely one of the lesser-known tea varieties,'
                        ' but it does not involve the actual vegetable itself.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Barley Tea.jpg',
                    itemName: 'Barley Tea',
                    itemPrice: 31,
                    itemDescription: 'Barley tea enjoys the most popularity in East Asia,'
                        ' and it’s a staple drink in China, Japan, and Korea.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Black Tea.jpg',
                    itemName: 'Black Tea',
                    itemPrice: 8,
                    itemDescription: 'Made with the leaves of the Camellia sinensis plant, black tea is a true tea.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Brown Rice Tea.jpg',
                    itemName: 'Brown Rice Tea',
                    itemPrice: 32,
                    itemDescription: 'Brown rice tea originates in Korea and it simply involves steeping teabags '
                        'that contain roasted grains of brown rice in boiling water.'),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chaga Tea.jpg',
                    itemName: 'Chaga Tea',
                    itemPrice: 35,
                    itemDescription: 'Many mushrooms have medicinal properties, but have you ever tried mushroom '),
                ItemHorizontalList(
                    itemImageName: 'assets/images/tea_images/Chai Tea.jpg',
                    itemName: 'Chai Tea',
                    itemPrice: 18,
                    itemDescription: 'Chai is a combination of black tea, steamed milk, and various Indian herbs and spices'),

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
                    itemImageName: 'assets/images/tea_images/Essiac Tea.jpg',
                    itemName: 'Essiac Tea',
                    itemDescription: 'Essiac tea is a traditional drink of the Ojibwa,'
                        ' a North American Indian tribe also known as the Chippewa.',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/coffee7.jpg',
                    itemName: 'Chrysanthemum Tea',
                    itemPrice: 38,
                    itemDescription: 'Chrysanthemums are flowering plants that originate in '
                        'East Asia, and we can mainly find them in China.'
                    ),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/hibcestea.jpg',
                    itemName: 'Hibiscus Tea',
                    itemDescription: 'Otherwise known as Agua De Jamaica, hibiscus is a tea made from the dried petals of the roselle flower.',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Honeybush Tea.jpg',
                    itemName: 'Honeybush Tea',
                    itemDescription: 'Honeybush tea is a lesser-known cousin to the popular rooibos (or “redbush”) tea.',
                    itemPrice: 29),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Lemon balm Tea.jpg',
                    itemName: 'Lemon balm Tea',
                    itemDescription: 'Lemon balm tea is a refreshing drink made from the leaves of the lemon'
                        ' balm plant, also known by the scientific name Melissa officinalis.',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Dandelion Tea.jpg',
                    itemName: 'Dandelion Tea',
                    itemPrice: 34,
                    itemDescription: 'For those of you with a garden, you can probably spot some dandelions from time to time.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chamomile Tea.jpg',
                    itemName: 'Chamomile Tea',
                    itemPrice: 12,
                    itemDescription: 'Chamomile tea comes from the edible flowers of the '
                        'Matricaria chamomilla plant, otherwise known as chamomile.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chai Tea.jpg',
                    itemName: 'Chai Tea',
                    itemPrice: 18,
                    itemDescription: 'Chai is a combination of black tea, steamed milk, and various Indian herbs and spices'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Artichoke Tea.jpg',
                    itemName: ' Artichoke Tea',
                    itemPrice: 22,
                    itemDescription: 'Artichoke tea is definitely one of the lesser-known tea varieties,'
                        ' but it does not involve the actual vegetable itself.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Barley Tea.jpg',
                    itemName: 'Barley Tea',
                    itemPrice: 31,
                    itemDescription: 'Barley tea enjoys the most popularity in East Asia,'
                        ' and it’s a staple drink in China, Japan, and Korea.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Black Tea.jpg',
                    itemName: 'Black Tea',
                    itemPrice: 8,
                    itemDescription: 'Made with the leaves of the Camellia sinensis plant, black tea is a true tea.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Brown Rice Tea.jpg',
                    itemName: 'Brown Rice Tea',
                    itemPrice: 32,
                    itemDescription: 'Brown rice tea originates in Korea and it simply involves steeping teabags '
                        'that contain roasted grains of brown rice in boiling water.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chaga Tea.jpg',
                    itemName: 'Chaga Tea',
                    itemPrice: 35,
                    itemDescription: 'Many mushrooms have medicinal properties, but have you ever tried mushroom '),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chai Tea.jpg',
                    itemName: 'Chai Tea',
                    itemPrice: 18,
                    itemDescription: 'Chai is a combination of black tea, steamed milk, and various Indian herbs and spices'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chamomile Tea.jpg',
                    itemName: 'Chamomile Tea',
                    itemPrice: 12,
                    itemDescription: 'Chamomile tea comes from the edible flowers of the '
                        'Matricaria chamomilla plant, otherwise known as chamomile.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Green Tea.jpg',
                    itemName: 'Green Tea',
                    itemDescription: 'While black tea is the popular choice in the'
                        ' Western world, green tea dominates the East, especially in Japan.',
                    itemPrice: 16),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Dandelion Tea.jpg',
                    itemName: 'Dandelion Tea',
                    itemPrice: 34,
                    itemDescription: 'For those of you with a garden, you can probably spot some dandelions from time to time.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Essiac Tea.jpg',
                    itemName: 'Essiac Tea',
                    itemDescription: 'Essiac tea is a traditional drink of the Ojibwa,'
                        ' a North American Indian tribe also known as the Chippewa.',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/coffee7.jpg',
                    itemName: 'Chrysanthemum Tea',
                    itemPrice: 38,
                    itemDescription: 'Chrysanthemums are flowering plants that originate in '
                        'East Asia, and we can mainly find them in China.'
                ),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/hibcestea.jpg',
                    itemName: 'Hibiscus Tea',
                    itemDescription: 'Otherwise known as Agua De Jamaica, hibiscus is a tea made from the dried petals of the roselle flower.',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Honeybush Tea.jpg',
                    itemName: 'Honeybush Tea',
                    itemDescription: 'Honeybush tea is a lesser-known cousin to the popular rooibos (or “redbush”) tea.',
                    itemPrice: 29),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Lemon balm Tea.jpg',
                    itemName: 'Lemon balm Tea',
                    itemDescription: 'Lemon balm tea is a refreshing drink made from the leaves of the lemon'
                        ' balm plant, also known by the scientific name Melissa officinalis.',
                    itemPrice: 23),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Dandelion Tea.jpg',
                    itemName: 'Dandelion Tea',
                    itemPrice: 34,
                    itemDescription: 'For those of you with a garden, you can probably spot some dandelions from time to time.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chamomile Tea.jpg',
                    itemName: 'Chamomile Tea',
                    itemPrice: 12,
                    itemDescription: 'Chamomile tea comes from the edible flowers of the '
                        'Matricaria chamomilla plant, otherwise known as chamomile.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chai Tea.jpg',
                    itemName: 'Chai Tea',
                    itemPrice: 18,
                    itemDescription: 'Chai is a combination of black tea, steamed milk, and various Indian herbs and spices'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Artichoke Tea.jpg',
                    itemName: ' Artichoke Tea',
                    itemPrice: 22,
                    itemDescription: 'Artichoke tea is definitely one of the lesser-known tea varieties,'
                        ' but it does not involve the actual vegetable itself.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Barley Tea.jpg',
                    itemName: 'Barley Tea',
                    itemPrice: 31,
                    itemDescription: 'Barley tea enjoys the most popularity in East Asia,'
                        ' and it’s a staple drink in China, Japan, and Korea.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Black Tea.jpg',
                    itemName: 'Black Tea',
                    itemPrice: 8,
                    itemDescription: 'Made with the leaves of the Camellia sinensis plant, black tea is a true tea.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Brown Rice Tea.jpg',
                    itemName: 'Brown Rice Tea',
                    itemPrice: 32,
                    itemDescription: 'Brown rice tea originates in Korea and it simply involves steeping teabags '
                        'that contain roasted grains of brown rice in boiling water.'),
                ItemVerticalList(
                    itemImageName: 'assets/images/tea_images/Chaga Tea.jpg',
                    itemName: 'Chaga Tea',
                    itemPrice: 35,
                    itemDescription: 'Many mushrooms have medicinal properties, but have you ever tried mushroom '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
