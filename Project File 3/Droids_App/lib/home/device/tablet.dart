import 'package:flutter/material.dart';
import 'package:proje/home/screen/card.dart';
import 'package:proje/home/screen/chart.dart';
import 'package:proje/home/screen/last_transaction.dart';
import 'package:proje/home/screen/send_money.dart';
import 'package:proje/common/mediaappbar.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: Column(
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
