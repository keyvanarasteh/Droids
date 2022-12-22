// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/device/mobile.dart';
import 'package:proje/device/tablet.dart';
import 'package:proje/device/desktop.dart';
import 'package:proje/device/large.dart';
import 'package:proje/common/media_drawer_mini.dart';
import 'package:proje/common/mediaappbar.dart';

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
        return Stack(
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
        );
      } else if (deviceType == "tablet") {
        return Stack(
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
        );
      } else if (deviceType == "desktop") {
        return Stack(
          children: [
            Desktop(),
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
        );
      } else {
        return Stack(
          children: [
            Large(),
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
        );
      }
    }

    return Scaffold(
        body: Column(
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
    ));
  }
}
