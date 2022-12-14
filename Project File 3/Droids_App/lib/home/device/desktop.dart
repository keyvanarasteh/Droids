// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/home/screen/card.dart';
import 'package:proje/home/screen/chart.dart';
import 'package:proje/home/screen/last_transaction.dart';
import 'package:proje/home/screen/send_money.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(flex: 4, child: CardBox()),
                  Expanded(flex: 4, child: Chart()),
                  Expanded(flex: 4, child: SendMoney())
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(flex: 3, child: LastTransaction()),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
