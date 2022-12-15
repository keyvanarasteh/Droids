

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'product.item2.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF211627),
        body: 
          Column(
              children: [ 
              Padding(
                    padding: EdgeInsets.only(right: 300 ),
                    child: Text(
                    "Last Transaction",
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
                ),
              Expanded(
                  child: ListView(
                    children: [
                      Productitem(
                        productTitle: "Nike",
                        productSubtitle: "Today",
                        productSubtitle2: "16.48 P.M.",
                        productTrailing: "\$ 136.60",
                        productLeading: "images/nike.png",
                      ),
                       Productitem(
                        productTitle: "Amazon",
                        productSubtitle: "Today",
                        productSubtitle2: "23.56 P.M.",
                        productTrailing: "\$ 2879.99",
                        productLeading: "images/amazon.png",
                      ),
                       Productitem(
                        productTitle: "Razer",
                        productSubtitle: "Yesterday",
                        productSubtitle2: "18.20 P.M.",
                        productTrailing: "\$ 487.25",
                        productLeading: "images/razer.png",
                      ),
                       Productitem(
                        productTitle: "Facebook",
                        productSubtitle: "Yesterday",
                        productSubtitle2: "08.17 A.M.",
                        productTrailing: "\$ 670.48",
                        productLeading: "images/facebook.png",
                      ),
                       Productitem(
                        productTitle: "Dribble",
                        productSubtitle: "Yesterday",
                        productSubtitle2: "11.05 A.M.",
                        productTrailing: "\$ 42.00",
                        productLeading: "images/dribble.png",
                      ),
                       Productitem(
                        productTitle: "Starbucks",
                        productSubtitle: "Yesterday",
                        productSubtitle2: "15.59 P.M.",
                        productTrailing: "\$ 2431.06",
                        productLeading: "images/Starbucks.png",
                      ),
                       Productitem(
                        productTitle: "Togg",
                        productSubtitle: "Yesterday",
                        productSubtitle2: "12.44 P.M.",
                        productTrailing: "\$ 128.00",
                        productLeading: "images/Togg.png",
                      ),
                    ],
                  ),

                ),
              Container(
              height: 50.0,
              width: 450,
              child: GestureDetector(
              child: Container(
              decoration: BoxDecoration(
              border: Border.all(
              color: Colors.grey,            
                ),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30.0),
            ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Center(
              child: Text(
              "See All Transactions",
              style: TextStyle(
              color: Colors.white,                                
              fontSize: 16
                            ),
                              ),
                                )
                                  ],
                                    ),
                                      ),
                                        ),
                                          ) 
                                            ],
                                              ),         
                                                ),
                                                  );
  }


}


