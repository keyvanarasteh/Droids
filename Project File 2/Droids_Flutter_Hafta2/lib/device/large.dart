import 'package:flutter/material.dart';
import 'package:proje/screen/media_configuration.dart';
import 'package:proje/screen/media_profile_leftsidebar.dart';
import 'package:proje/screen/mobil_Screen.dart';
import 'package:proje/screen/widgets_screen.dart';
import 'package:proje/common/mediaappbar.dart';

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
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: ProfileMenu(),
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
