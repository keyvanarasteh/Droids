import 'package:flutter/material.dart';
import 'package:proje/home/screen/card.dart';
import 'package:proje/home/screen/chart.dart';
import 'package:proje/home/screen/last_transaction.dart';
import 'package:proje/home/screen/send_money.dart';
import 'package:proje/common/mediaappbar.dart';

class Large extends StatefulWidget {
  const Large({super.key});

  @override
  State<Large> createState() => _LargeState();
}

class _LargeState extends State<Large> {
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
