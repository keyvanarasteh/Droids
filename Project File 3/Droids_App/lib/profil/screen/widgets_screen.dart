// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  bool kutuAcikMi = false;

  List<bool> kutularinDurumu = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF241B2E),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Frequently Asked Questions",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              // AÇILIP - KAPANAN PANEL KOD BAŞLANGICI
              Container(
                margin: EdgeInsets.only(),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(cardColor: Color(0xFF32293C)),
                  // ExpansionPanelList Başlangıçı
                  child: ExpansionPanelList(
                    dividerColor: Colors.white,
                    expansionCallback: (index, isOpen) {
                      setState(() {
                        kutularinDurumu[index] = !isOpen;
                      });
                    },
                    children: [
                      // First Question
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Password not accepted?",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        body: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Pay attention to uppercase and lowercase letters. Do not use illegal markers. \n\nMake sure you don't type your old password.\n",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        isExpanded: kutularinDurumu[0],
                      ),
                      // Second Question
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "What is pricing",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        body: Wrap(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "You can define the prices of many types of services separately, such as tour prices and additional services of the tour (visa, passport, ticket, etc.).\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                        isExpanded: kutularinDurumu[1],
                      ),
                      // Third Question
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Mail is not coming",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        body: Wrap(children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Make sure you enter your e-mail address correctly. If your problem persists, do not hesitate to contact us.\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                        isExpanded: kutularinDurumu[2],
                      ),
                      // Fourth Question
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "What can I do in accounting",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        body: Wrap(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "It is the part where many transactions to be transferred to the general ledger take place.\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                        isExpanded: kutularinDurumu[3],
                      ),
                      // Fifth Question
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Stock Market Tracking Failure",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        body: Wrap(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "You can solve this problem caused by lack of ram by closing the windows or refresh the page.\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                        isExpanded: kutularinDurumu[4],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
