import 'package:flutter/material.dart';
import 'package:proje/profil/screen/media_configuration.dart';
import 'package:proje/profil/screen/media_profile_leftsidebar.dart';
import 'package:proje/profil/screen/mobil_Screen.dart';
import 'package:proje/profil/screen/widgets_screen.dart';
import 'package:proje/common/mediaappbar.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
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
