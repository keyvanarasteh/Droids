// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/common/mediaappbar.dart';
import 'package:proje/profil/screen/media_configuration.dart';
import 'package:proje/profil/screen/media_profile_leftsidebar.dart';
import 'package:proje/profil/screen/mobil_Screen.dart';
import 'package:proje/profil/screen/widgets_screen.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ProfileMenu(),
            ),
            Expanded(
              flex: 16,
              child: MobilScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
