import 'package:flutter/material.dart';
import 'package:proje/home/screen/card.dart';
import 'package:proje/home/screen/chart.dart';
import 'package:proje/home/screen/last_transaction.dart';
import 'package:proje/home/screen/send_money.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(flex: 4, child: CardBox()),
          Expanded(flex: 4, child: Chart()),
          Expanded(flex: 3, child: SendMoney())
        ],
      ),
    );
  }
}
