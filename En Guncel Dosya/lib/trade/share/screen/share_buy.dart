// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:candlesticks/candlesticks.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proje/trade/share/screen/Limit.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  List<Candle> candles = [];
  bool themeIsDark = false;

  @override
  void initState() {
    fetchCandles().then((value) {
      setState(() {
        candles = value;
      });
    });
    super.initState();
  }

  Future<List<Candle>> fetchCandles() async {
    final uri = Uri.parse(
        "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1h");
    final res = await http.get(uri);
    return (jsonDecode(res.body) as List<dynamic>)
        .map((e) => Candle.fromJson(e))
        .toList()
        .reversed
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 32, 43, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                color: Color.fromRGBO(27, 32, 43, 1),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.chevron_left_rounded,
                          size: 40,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Candlesticks(
                  candles: candles,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Container(
                      color: Color.fromRGBO(27, 32, 43, 1),
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 4,
                      child: Limit()),
                  // Buy and Sell Button Start
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text('BUY'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.normal),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('SELL'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.normal),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                  // Buy and Sell Button End
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
