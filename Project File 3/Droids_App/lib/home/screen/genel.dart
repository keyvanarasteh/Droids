// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/home/device/mobile.dart';
import 'package:proje/home/device/tablet.dart';
import 'package:proje/home/device/desktop.dart';
import 'package:proje/home/device/large.dart';
import 'package:proje/common/media_drawer_mini.dart';
import 'package:proje/common/mediaappbar.dart';
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
          backgroundColor: Color(0xFF191321),
          body: SafeArea(
            child: Stack(
              children: [
                Mobile(),
                MenuAciksa
                    ? Positioned(
                        child: MediaDrawerMini(),
                      )
                    : Positioned(
                        width: 0,
                        height: 0,
                        child: Text(''),
                      ),
              ],
            ),
          ),
        );
      } else if (deviceType == "tablet") {
        return Scaffold(
          backgroundColor: Color(0xFF191321),
          body: Stack(
            children: [
              Tablet(),
              MenuAciksa
                  ? Positioned(
                      child: MediaDrawerMini(),
                    )
                  : Positioned(
                      width: 0,
                      height: 0,
                      child: Text(''),
                    ),
            ],
          ),
        );
      } else if (deviceType == "desktop") {
        return Scaffold(
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
              MediaAppBar(
                MenuTiklama: () => {
                  if (MenuAciksa)
                    {
                      setState(
                        () {
                          MenuAciksa = false;
                        },
                      )
                    }
                  else
                    {
                      setState(
                        () {
                          MenuAciksa = true;
                        },
                      )
                    }
                },
              ),
              //Media Appbar Gövdesi
              SizedBox(
                width: double.infinity,
                height: 20,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFFF191321),
                  ),
                ),
              ),
              Expanded(
                child: buildScreen(),
              )
            ],
          ),
        ));
  }
}