import 'package:coffee_place/textFeildDetails.dart';
import 'package:flutter/material.dart';

class LogingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/coffe logo.jpg',
                ),
                Positioned(
                    top: 270,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[200],
                      maxRadius: 20,
                    )),
                Positioned(
                    top: 250,
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[200],
                      maxRadius: 10,
                    )),
                Positioned(
                    top: 238,
                    left: 18,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[200],
                      maxRadius: 6,
                    )),
                Positioned(
                    top: 233,
                    left: 11,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[200],
                      maxRadius: 4,
                    )),
                Positioned(
                    top: 231,
                    left: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[200],
                      maxRadius: 3,
                    )),
                Positioned(
                    top: 231,
                    left: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[200],
                      maxRadius: 2,
                    )),
                Positioned(
                    top: 0,
                    right: 2,
                    child: Container(
                      height: 300,
                      width: 1,
                      decoration: BoxDecoration(
                        color: Colors.orange[200],
                        shape: BoxShape.rectangle,
                      ),
                    )),
                Positioned(
                    top: 0,
                    right: 5,
                    child: Container(
                      height: 300,
                      width: 2,
                      decoration: BoxDecoration(
                        color: Colors.orange[200],
                        shape: BoxShape.rectangle,
                      ),
                    )),
                Positioned(
                    top: 0,
                    right: 10,
                    child: Container(
                      height: 300,
                      width: 4,
                      decoration: BoxDecoration(
                        color: Colors.orange[200],
                        shape: BoxShape.rectangle,
                      ),
                    )),
              ],
            ),
            TextFeildDetails(),
          ]),
        ),
      ),
    );
  }
}
