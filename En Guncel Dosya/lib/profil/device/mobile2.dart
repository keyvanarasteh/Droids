// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/common/main_appbar.dart';
import 'package:proje/common/media_drawer_v2.dart';
import 'package:proje/profil/screen/media_configuration.dart';
import 'package:proje/profil/screen/media_profile_leftsidebar.dart';

class Mobile2 extends StatefulWidget {
  const Mobile2({super.key});

  @override
  State<Mobile2> createState() => _Mobile2State();
}

class _Mobile2State extends State<Mobile2> {
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
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ProfileMenu(),
            ),
            Expanded(
              flex: 22,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Expanded(
                  flex: 13,
                  child: ProfileConfig(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
