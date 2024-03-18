import 'dart:ui';

import 'package:coffee_place/tabBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextStyle textColor=TextStyle(color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.brown[200],
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white70),
                margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            maxRadius: 18,
                            backgroundImage: AssetImage(
                                "assets/images/person avathar.jpg"),
                          ),
                          IconButton(onPressed: (){
                           Navigator.pop(context);
                          },
                              icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,))
                        ],
                      ),
                      Text('Name',style: textColor,),
                      Text('Email',style: textColor,),
                      Text('username',style: textColor,),
                    ],)),

            ],
          )
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset(
                        'assets/images/coffeshop.jpg',
                        fit: BoxFit.fill,
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Container(
                      color: Colors.black38,
                      child: SafeArea(
                        child: Column(
                          children: [
                            AppBar(
                              toolbarHeight: 38,
                              backgroundColor: Colors.black12,
                              foregroundColor: Colors.white,


                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Coffee Place ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      CircleAvatar(
                                        maxRadius: 18,
                                        backgroundImage: AssetImage(
                                            "assets/images/person avathar.jpg"),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'your daily coffee needs',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: TextField(
                                      cursorColor: Colors.white60,
                                      style: const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: Colors.brown[700],
                                        label:
                                            const Text('search your favorite coffee'),
                                        labelStyle: const TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18,
                                        ),
                                        suffixIcon: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.coffee_maker_outlined,
                                            size: 18,)),
                                        suffixIconColor: Colors.brown[300],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TabBarPage(),
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
