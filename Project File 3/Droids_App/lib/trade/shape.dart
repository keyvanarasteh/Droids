// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proje/common/main_appbar.dart';
import 'package:proje/common/main_appbarDL.dart';
import 'package:proje/common/media_drawer_mini_icon.dart';
import 'package:proje/common/media_drawer_v2.dart';
import 'package:proje/trade/screen/media_shape.dart';

class ShapeScreen extends StatefulWidget {
  const ShapeScreen({super.key});

  @override
  State<ShapeScreen> createState() => _ShapeScreenState();
}

bool MenuAciksa = false;

class _ShapeScreenState extends State<ShapeScreen> {
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
    var scrHeight = MediaQuery.of(context).size.height;
    var deviceType = checkDevice(scrWidth);
    Widget buildScreen() {
      if (deviceType == "mobile") {
        return Scaffold(
          drawer: MediaDrawerMiniV2(),
          appBar: AppBar(
            backgroundColor: Color(0xFF191321),
            actions: const [MainAppBar()],
            title: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Container(
                child: Image.asset(
                  'assets/images/logo_mini.jpg',
                  width: 44,
                  height: 44,
                ),
              ),
            ),
          ),
          body: Stack(
            children: const [
              MediaShape(),
            ],
          ),
        );
      } else if (deviceType == "tablet") {
        return Scaffold(
          drawer: MediaDrawerMiniV2(),
          appBar: AppBar(
            backgroundColor: Color(0xFF191321),
            actions: [MainAppBar()],
            title: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Container(
                child: Image.asset(
                  'assets/images/logo_mini.jpg',
                  width: 44,
                  height: 44,
                ),
              ),
            ),
          ),
          body: Stack(
            children: [
              MediaShape(),
            ],
          ),
        );
      } else if (deviceType == "desktop") {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF191321),
            actions: [MainAppBarDl()],
            title: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: 133,
                      height: 84,
                    ),
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  Text("Dashboard")
                ],
              ),
            ),
          ),
          body: Row(
            children: const [
              Expanded(flex: 1, child: MediaDrawerMiniIcon()),
              Expanded(flex: 10, child: MediaShape()),
            ],
          ),
        );

        //Large Ekranı yeni MenuV2 eklendi ve entegre edildi
      } else {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF191321),
            actions: [MainAppBarDl()],
            title: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: 133,
                      height: 84,
                    ),
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  Text("Dashboard")
                ],
              ),
            ),
          ),
          body: Row(
            children: const [
              Expanded(flex: 2, child: MediaDrawerMiniV2()),
              Expanded(flex: 9, child: MediaShape()),
            ],
          ),
        );
      }
    }

    //Media Appbar Menu açıp kapatma fonksiyon
    return Scaffold(
        backgroundColor: Color(0xFF191321),
        body: SafeArea(
          child: Column(
            children: [
              //Media Appbar Gövdesi
              Expanded(
                child: buildScreen(),
              ),
            ],
          ),
        ));
  }
}
