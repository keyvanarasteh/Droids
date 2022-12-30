// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:proje/common/media_drawer_mini_icon.dart';
import 'package:proje/common/media_drawer_v2.dart';
import 'package:proje/profil/device/mobile.dart';
import 'package:proje/profil/device/tablet.dart';
import 'package:proje/profil/device/desktop.dart';
import 'package:proje/profil/device/large.dart';
import 'package:proje/common/media_drawer_mini.dart';
import 'package:proje/common/mediaappbar.dart';
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
        return Stack(
          children: [
            MediaShape(),
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
            MediaShape(),
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
        return Row(
          children: [
            Expanded(flex: 1, child: MediaDrawerMiniIcon()),
            Expanded(flex: 10, child: MediaShape()),
          ],
        );

        //Large Ekranı yeni MenuV2 eklendi ve entegre edildi
      } else {
        return Row(
          children: [
            Expanded(flex: 2, child: MediaDrawerMiniV2()),
            Expanded(flex: 9, child: MediaShape()),
          ],
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
