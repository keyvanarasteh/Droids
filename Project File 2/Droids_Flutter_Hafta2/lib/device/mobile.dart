import 'package:flutter/material.dart';
import 'package:proje/common/mediaappbar.dart';
import 'package:proje/screen/media_configuration.dart';
import 'package:proje/screen/media_profile_leftsidebar.dart';
import 'package:proje/screen/mobil_Screen.dart';
import 'package:proje/screen/widgets_screen.dart';

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
      body: Column(
        children: [
          Expanded(
            child: MobilScreen(),
          ),
        ],
      ),
    );
  }
}
