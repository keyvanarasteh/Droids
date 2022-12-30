// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Limit extends StatefulWidget {
  const Limit({super.key});

  @override
  State<Limit> createState() => _LimitState();
}

class _LimitState extends State<Limit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 32, 43, 1),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () => null,
                child: Text(
                  "LİMİT",
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () => null,
                child: Text(
                  "Piyasa",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () => null,
                child: Text(
                  "Stop-Limit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.arrow_drop_down),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.info_outlined),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(color: Color(0xFF46414D)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[\d,]"))
                            ],
                            decoration: InputDecoration(
                                suffixText: ('USDT'),
                                border: InputBorder.none,
                                hintText: "Fiyat"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(color: Color(0xFF46414D)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[\d,]"))
                            ],
                            decoration: InputDecoration(
                                suffixText: ('USDT'),
                                border: InputBorder.none,
                                hintText: "Fiyat"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(color: Color(0xFF46414D)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[\d,]"))
                            ],
                            decoration: const InputDecoration(
                                border: InputBorder.none, hintText: "Miktar"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(color: Color(0xFF46414D)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[\d,]"))
                            ],
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Miktar"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
