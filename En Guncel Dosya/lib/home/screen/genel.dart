// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/common/main_appbar.dart';
import 'package:proje/common/main_appbarDL.dart';
import 'package:proje/home/device/mobile.dart';
import 'package:proje/home/device/tablet.dart';
import 'package:proje/home/device/desktop.dart';
import 'package:proje/home/device/large.dart';
import 'package:proje/common/media_drawer_mini_icon.dart';
import 'package:proje/common/media_drawer_v2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

bool MenuAciksa = false;

class _MainScreenState extends State<MainScreen> {
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

//1.54.58
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
          backgroundColor: Color(0xFF191321),
          body: SafeArea(
            child: Stack(
              children: [
                Mobile(),
              ],
            ),
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
          backgroundColor: Color(0xFF191321),
          body: Stack(
            children: [
              Tablet(),
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
          backgroundColor: Color(0xFF191321),
          body: Row(
            children: [
              Expanded(flex: 1, child: MediaDrawerMiniIcon()),
              SizedBox(
                width: 10,
              ),
              Expanded(flex: 12, child: Desktop()),
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
          backgroundColor: Color(0xFF191321),
          body: Row(
            children: [
              Expanded(flex: 2, child: MediaDrawerMiniV2()),
              SizedBox(
                width: 10,
              ),
              Expanded(flex: 9, child: Large()),
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
