// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/common/main_appbar.dart';

import 'package:proje/common/media_drawer_v2.dart';

import 'package:proje/profil/screen/media_profile_leftsidebar.dart';

import 'package:proje/profil/screen/widgets_screen.dart';

class Mobile3 extends StatefulWidget {
  const Mobile3({super.key});

  @override
  State<Mobile3> createState() => _Mobile3State();
}

class _Mobile3State extends State<Mobile3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
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
              child: WidgetsScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
