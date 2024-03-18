import 'package:coffee_place/ChocolateSection/chocolatItems.dart';
import 'package:coffee_place/TeaSection/teaItems.dart';
import 'package:coffee_place/foodSection/foodItems.dart';
import 'package:flutter/material.dart';

import 'containerSection/itemHorizondalList.dart';
import 'coffeeSection/coffeItems.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Positioned(
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8 - 20,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.brown[700],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                    dividerColor: Colors.brown[700],
                    indicatorColor: Colors.brown[300],
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.only(bottom: 4),
                    labelColor: Colors.white,
                    labelStyle: const TextStyle(fontSize: 16),
                    labelPadding: const EdgeInsets.all(1),
                    unselectedLabelStyle:
                        const TextStyle(color: Colors.white60, fontSize: 16),
                    tabs: const [
                      Tab(
                        text: 'Coffee',
                      ),
                      Tab(
                        text: 'Tea',
                      ),
                      Tab(
                        text: ' Chocolate',
                      ),
                      Tab(
                        text: 'Food',
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CoffeeItems(),
                    TeaItems(),
                    ChocolateItems(),
                    FoodItems(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
