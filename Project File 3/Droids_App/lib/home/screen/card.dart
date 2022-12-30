// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class CardBox extends StatefulWidget {
  const CardBox({super.key});

  @override
  State<CardBox> createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  checkDevice(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height / 4;
    var deviceType = checkDevice(scrWidth);

    if (deviceType == "mobile" ||
        deviceType == 'tablet' ||
        deviceType == 'desktop') {
      return Scaffold(
        backgroundColor: Color(0xFF191321),
        body: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width + 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF191321),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    // Cards Row
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/card1.png',
                          width: 160, height: 120, fit: BoxFit.fill),
                      Image.asset('assets/images/card2.png',
                          width: 160, height: 120, fit: BoxFit.fill),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      // Cards Row Text
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "EXPIRE DATA",
                          style: TextStyle(color: Color(0xFF615D68)),
                        ),
                        Text(
                          "CVC/CVV",
                          style: TextStyle(color: Color(0xFF615D68)),
                        ),
                        Text(
                          "STATUS",
                          style: TextStyle(color: Color(0xFF615D68)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    // Cards Row Bottom Text
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("12/26"),
                      Text("...,..."),
                      Text("Active"),
                    ],
                  )
                ],
              ),
            )),
      );
    } else {
      return Scaffold(
        backgroundColor: Color(0xFF191321),
        body: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width + 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF191321),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    // Cards Row
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/card1.png',
                          width: 160, height: 120, fit: BoxFit.fill),
                      Image.asset('assets/images/card2.png',
                          width: 160, height: 120, fit: BoxFit.fill),
                      Column(
                        // Cards Row Text
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "EXPIRE DATA",
                            style: TextStyle(color: Color(0xFF615D68)),
                          ),
                          Text(
                            "CVC/CVV",
                            style: TextStyle(color: Color(0xFF615D68)),
                          ),
                          Text(
                            "STATUS",
                            style: TextStyle(color: Color(0xFF615D68)),
                          ),
                        ],
                      ),
                      Column(
                        // Cards Row Bottom Text
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("12/26"),
                          Text("...,..."),
                          Text("Active"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      );
    }
  }
}
