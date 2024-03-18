
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPriceDetails extends StatefulWidget {
  final String itemName;
  final double itemPrice;

  ItemPriceDetails({
    required this.itemName,
    required this.itemPrice
});
  @override
  State<ItemPriceDetails> createState() => _ItemPriceDetailsState();
}

class _ItemPriceDetailsState extends State<ItemPriceDetails> {
  late String itemName;
  late double itemPrice;
  double sugarValue = 0;
  double sizeValue = 50;
  double rating = 0.0;
  List<Widget> milks=[
    Text('Almound'),
    Text('Soy'),
    Text('Cashew')];
  final List<bool> selectedMilk=[true,false,false];

  int quantity = 0;
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    itemName = widget.itemName;
    itemPrice= widget.itemPrice;
  }



  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.brown[400],
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 7,
              ),
              itemStarRating(),
              const SizedBox(
                height: 17,
              ),
              sizeSlider(),
              const SizedBox(
                height: 15,
              ),
              sugarSlider(),
              const SizedBox(
                height: 15,
              ),
              milkBar(),
              const SizedBox(
                width: 15,
              ),
              price(),
              const SizedBox(
                width: 15,
              ),
              productQuandity(),
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buyButton(),
                    cartButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemStarRating() {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: 25,
          initialRating: 0,
          minRating: 0,
          ignoreGestures: false,
          direction: Axis.horizontal,
          allowHalfRating: true,
          tapOnlyMode: false,
          updateOnDrag: true,
          itemCount: 5,
          glow: false,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (newRating) {
            setState(() {
              rating = newRating.toDouble();
            });
          },
        ),
        const SizedBox(
          width: 30,
        ),
        rating <=1
            ? Icon(
          Icons.heart_broken_outlined,
          color: Colors.brown.shade900,
          size: 25,
        )
            : rating > 0.5 && rating <= 4
            ? Icon(
          Icons.heart_broken,
          color: Colors.red,
          size: 25,
          shadows: [
            Shadow(blurRadius: 6, color: Colors.brown.shade900)
          ],
        )
            : Icon(
          Icons.favorite_outlined,
          color: Colors.red,
          size: 25,
          shadows: [
            Shadow(blurRadius: 9, color: Colors.brown.shade900)
          ],
        ),
      ],
    );
  }

  Widget sizeSlider() {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .4 - 10,
          child: Row(
            children: [
              Container(
                width: sizeValue == 0 ? 26 : 25,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    boxShadow: [
                      sizeValue == 0
                          ? const BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 4,
                              color: Colors.black54,
                            )
                          : const BoxShadow(),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  'S',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: sizeValue == 0 ? Colors.white : Colors.brown[100]),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: sizeValue == 0 ? 26 : 25,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    boxShadow: [
                      sizeValue == 50
                          ? const BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 4,
                              color: Colors.black54,
                            )
                          : const BoxShadow(),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'M',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color:
                            sizeValue == 50 ? Colors.white : Colors.brown[100]),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: sizeValue == 0 ? 26 : 25,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    boxShadow: [
                      sizeValue == 100
                          ? const BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 4,
                              color: Colors.black54,
                            )
                          : const BoxShadow(),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  'L',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: sizeValue == 100 ? Colors.white : Colors.brown[100],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Size',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.brown[100]),
            ),
            SizedBox(
              width: 270,
              child: Slider(
                min: 0,
                max: 100,
                value: sizeValue,
                divisions: 2,
                activeColor: Colors.brown[700],
                thumbColor: Colors.brown,
                label: '${sizeValue.round()}',
                onChanged: (newValue) {
                  setState(() {
                    sizeValue = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget sugarSlider() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              width: MediaQuery.of(context).size.width * .4 - 10,
              decoration: const BoxDecoration(
                  color: Colors.brown,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2, blurRadius: 4, color: Colors.black54),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Text(
                      '${sugarValue.round()}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    sugarValue >= 45 && sugarValue <= 55
                        ? 'Medium'
                        : sugarValue > 55
                            ? 'High'
                            : 'Low',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: sugarValue < 45
                          ? Colors.green
                          : sugarValue >= 40 && sugarValue <= 55
                              ? Colors.brown[100]
                              : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sugar',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.brown[100]),
            ),
            SizedBox(
              width: 270,
              child: Slider(
                min: 0,
                max: 100,
                value: sugarValue,
                divisions: 100,
                activeColor: Colors.brown[700],
                thumbColor: Colors.brown,
                label: '${sugarValue.round()}',
                onChanged: (newValue) {
                  setState(() {
                    sugarValue = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }



  Widget milkBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Milk',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.brown[100]),
        ),
        const SizedBox(
          width: 60,
        ),
        SizedBox(
          width: 235,
          height: 30,
          child: DefaultTabController(
            length: 3,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 2),
              width: MediaQuery.of(context).size.width * .4 - 10,
              decoration: const BoxDecoration(
                  color: Colors.brown,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2, blurRadius: 4, color: Colors.black54),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))), 
                child:TabBar(
                  padding: const EdgeInsets.only(left: 2, right: 1),
                  dividerHeight: 0,
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  indicatorColor: Colors.brown.shade700,
                  indicatorWeight: 3.4,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.brown[100]),
                  labelPadding: const EdgeInsets.all(2),
                  tabs:  [
                    milks[0],
                    milks[1],
                    milks[2],
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  Widget price() {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Price',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.brown[100]),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            padding: const EdgeInsets.only(left: 7, right: 7),
            margin: const EdgeInsets.only(left: 25),
            height: 28,
            decoration: const BoxDecoration(
                color: Colors.brown,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2, blurRadius: 4, color: Colors.black54),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '\$$totalPrice',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.brown[100]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productQuandity() {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Quantity',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.brown[100]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            height: 30,
            decoration: const BoxDecoration(
                color: Colors.brown,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2, blurRadius: 4, color: Colors.black54),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                MaterialButton(
                    onPressed: () {
                      setState(() {
                        quantity--;
                        if (quantity < 1) {
                          totalPrice=0;
                          quantity = 0;
                        } else {
                          totalPrice = totalPrice - itemPrice;
                        }
                      });
                    },
                    padding: const EdgeInsets.all(1),
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        borderSide: BorderSide.none),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minWidth: 30,
                    child: Text(
                      '-',
                      style:
                          TextStyle(color: Colors.brown.shade700, fontSize: 30),
                    )),
                VerticalDivider(
                  indent: 6,
                  endIndent: 6,
                  color: Colors.brown[300],
                  thickness: 0.5,
                ),
                Text(
                  quantity.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.brown[100]),
                ),
                VerticalDivider(
                  indent: 6,
                  endIndent: 6,
                  color: Colors.brown[300],
                  thickness: 0.5,
                ),
                MaterialButton(
                    onPressed: () {
                      setState(() {
                        quantity++;
                        totalPrice = totalPrice + itemPrice;
                      });
                    },
                    padding: const EdgeInsets.all(1),
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        borderSide: BorderSide.none),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minWidth: 30,
                    child: Text(
                      '+',
                      style:
                          TextStyle(color: Colors.brown.shade700, fontSize: 30),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buyButton() {
    return MaterialButton(
      onPressed: () {
        showDialog(context: context, builder: (BuildContext context1) {
          return
            AlertDialog(
            backgroundColor: Colors.white,
            alignment: Alignment.center,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            titleTextStyle: TextStyle(color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            ),

            title: Text('Confirm Your Order.!'),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Name.'),Text(itemName,style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Size.'),
                  Text('${sizeValue==0? 'Small' :sizeValue==50?'Medium':'Large'}',style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Sugar.'),
                  Text(' $sugarValue%',style: TextStyle(color: Colors.grey[600])),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Price.'),
                  Text('\$$itemPrice',style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Quantity. '),
                  Text('$quantity',style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Price: ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                  Text('\$$totalPrice',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,color: Colors.grey[600]),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                    Navigator.pop(context1);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.black12,
                        showCloseIcon: true,
                        content: Text(' Canceling...'),
                      ),
                    );
                  },
                      child: Text('Cancel')),

                  TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        shape: MaterialStatePropertyAll(LinearBorder(),),
                        minimumSize: MaterialStatePropertyAll(Size(60, 15)),
                      ),
                      onPressed: (){
                    Navigator.pop(context1);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.black12,
                          showCloseIcon: true,
                          content: Text(' Order Completed SuccessFully...'),
                        ),);
                  },
                      child: Text('Submit',style: TextStyle(color: Colors.white),)),
                ],
              )
            ],
            actionsPadding: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
            actionsOverflowAlignment: OverflowBarAlignment.start,

          );
        },);
      },
      splashColor: Colors.brown[400],
      highlightColor: Colors.brown[400],
      child: Container(
        padding: const EdgeInsets.only(left: 7, right: 7),
        margin: const EdgeInsets.only(left: 25),
        height: 40,
        width: 110,
        decoration: const BoxDecoration(
            color: Colors.brown,
            boxShadow: [
              BoxShadow(spreadRadius: 2, blurRadius: 4, color: Colors.black54),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Buy Now',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.brown[100]),
          ),
        ),
      ),
    );
  }
  Widget cartButton() {
    return MaterialButton(
      onPressed: () {
       ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
             backgroundColor: Colors.black12,
               content: Text('Capachino added successfully...'),
             showCloseIcon: true,
           ),
       );
      },
      splashColor: Colors.brown[400],
      highlightColor: Colors.brown[400],
      child: Container(
        padding: const EdgeInsets.only(left: 7, right: 7),
        margin: const EdgeInsets.only(left: 25),
        height: 40,
        width: 110,
        decoration: const BoxDecoration(
            color: Colors.brown,
            boxShadow: [
              BoxShadow(spreadRadius: 2, blurRadius: 4, color: Colors.black54),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add ',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.brown[100]),
              ),
              Icon(Icons.shopping_cart_outlined,
                color: Colors.orangeAccent ,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
