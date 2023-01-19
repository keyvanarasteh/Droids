// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proje/home/Product/product.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF241B2E),
          ),
          child: Column(children: [
            Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Text("Send Money"),
                )),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: NewWidget(
                    resim: "assets/images/add.jpg",
                    yazi: "add",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  resim: "assets/images/add.jpg",
                  yazi: "add",
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  resim: "assets/images/add.jpg",
                  yazi: "add",
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  resim: "assets/images/resim.jpg",
                  yazi: "jack",
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  resim: "assets/images/resim2.jpg",
                  yazi: "alisson",
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  resim: "assets/images/resim3.jpg",
                  yazi: "claire",
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  resim: "assets/images/is_hayati.jpg",
                  yazi: "tom",
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
