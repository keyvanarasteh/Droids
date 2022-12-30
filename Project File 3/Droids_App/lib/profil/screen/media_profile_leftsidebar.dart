// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void

import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Align(
                child: Container(
                  width: MediaQuery.of(context).size.width + 100,
                  // Munuleri kapsayan cotainerım

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF241B2E),
                  ),
                  child: Row(
                      // Menu içeriğimin bulunduğu kısım
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          //Menüde bulunan yazı buttonları
                          children: [
                            TextButton.icon(
                              // <-- TextButton
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed("/Profile_Section1");
                              },
                              icon: Icon(
                                Icons.account_box_outlined,
                                size: 24.0,
                              ),
                              label: Text(
                                'Profile',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed("/Profile_Section2");
                          },
                          icon: Icon(
                            Icons.center_focus_weak,
                            size: 24.0,
                          ),

                          label: Text(
                            'Graphic',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed("/Profile_Section3");
                          },
                          icon: Icon(
                            Icons.live_help_outlined,
                            size: 24.0,
                          ),
                          label: Text(
                            'Frequently Asked',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 52,
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
