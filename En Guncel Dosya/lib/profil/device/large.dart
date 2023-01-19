// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proje/profil/screen/media_configuration.dart';
import 'package:proje/profil/screen/media_profile_leftsidebar.dart';
import 'package:proje/profil/screen/mobil_Screen.dart';
import 'package:proje/profil/screen/widgets_screen.dart';

class Large extends StatefulWidget {
  const Large({super.key});

  @override
  State<Large> createState() => _LargeState();
}

class _LargeState extends State<Large> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: Column(
        children: [
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 5,
                  child: MobilScreen(),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: ProfileConfig(),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 3,
                  child: WidgetsScreen(),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
