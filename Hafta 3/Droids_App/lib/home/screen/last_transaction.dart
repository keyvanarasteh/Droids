// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:proje/home/Product/product.item2.dart';

class LastTransaction extends StatefulWidget {
  const LastTransaction({super.key});

  @override
  State<LastTransaction> createState() => _LastTransactionState();
}

class _LastTransactionState extends State<LastTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: Container(
        height: MediaQuery.of(context).size.height / 1.25,
        width: MediaQuery.of(context).size.width + 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF241B2E),
        ),
        child: Column(
          children: [
            // Title Text Start
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "Last Transaction",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            // Title Text End
            SizedBox(
              height: 30,
            ),
            // ListView Start
            Expanded(
              child: ListView(
                children: [
                  Productitem2(
                    Logo_Name: "Nike",
                    Date: "Today",
                    Time: "16.48 P.M.",
                    Amount: "\$ 136.60",
                    Logo: "images/nike.png",
                  ),
                  Productitem2(
                    Logo_Name: "Msi",
                    Date: "Today",
                    Time: "23.56 P.M.",
                    Amount: "\$ 2879.99",
                    Logo: "images/Msi.png",
                  ),
                  Productitem2(
                    Logo_Name: "Razer",
                    Date: "Yesterday",
                    Time: "18.20 P.M.",
                    Amount: "\$ 487.25",
                    Logo: "images/razer.png",
                  ),
                  Productitem2(
                    Logo_Name: "Ziraat",
                    Date: "Yesterday",
                    Time: "08.17 A.M.",
                    Amount: "\$ 670.48",
                    Logo: "images/ziraat.png",
                  ),
                  Productitem2(
                    Logo_Name: "Dribble",
                    Date: "Yesterday",
                    Time: "11.05 A.M.",
                    Amount: "\$ 382.00",
                    Logo: "images/dribble.png",
                  ),
                  Productitem2(
                    Logo_Name: "Koç",
                    Date: "Yesterday",
                    Time: "15.59 P.M.",
                    Amount: "\$ 2431.06",
                    Logo: "images/Koc.png",
                  ),
                  Productitem2(
                    Logo_Name: "Apple",
                    Date: "Yesterday",
                    Time: "12.44 P.M.",
                    Amount: "\$ 3710.85",
                    Logo: "images/apple.png",
                  ),
                ],
              ),
            ),
            // ListView End
            // See All Transaction Start
            Container(
              height: 50.0,
              width: 450,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Color(0xFF241B2E),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF241B2E),
                          ),
                          child: Text(
                            'See All Transaction',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // See All Transaction End
          ],
        ),
      ),
    );
  }
}
