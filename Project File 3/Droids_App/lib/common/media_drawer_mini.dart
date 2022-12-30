// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/home/screen/genel.dart';
import 'package:proje/profil/screen/genel.dart';
import 'package:proje/trade/shape.dart';

class MediaDrawerMini extends StatelessWidget {
  const MediaDrawerMini({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xFF241B2E),
        width: 160,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, //Menü column konumlandırma
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  // Menu Home

                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/Home_Screen");
                  },
                ),
                ListTile(
                  // Menu Invocies
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/Profile_Screen");
                  },
                ),
                ListTile(
                  //Menu Withdraw
                  leading: Icon(Icons.insert_chart_outlined_rounded),
                  title: Text("Shape"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/Shape_Screen");
                  },
                ),
                ListTile(
                  //Menu My Bank
                  leading: Icon(Icons.credit_card),
                  title: Text("Add Card"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/card");
                  },
                ),
                Divider(),
                ListTile(
                  //Menu My Bank
                  leading: Icon(Icons.notifications),
                  title: Text("Request"),
                  onTap: () => null,
                ),
                ListTile(
                  //Menu My Bank
                  leading: Icon(Icons.description_outlined),
                  title: Text("Policies"),
                  onTap: () => null,
                ),
                ListTile(
                  //Menu Settings
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () => null,
                ),
                Divider(),
                ListTile(
                  //Menu Logout
                  leading: Icon(Icons.logout_outlined),
                  title: Text("Logout"),
                  onTap: () => null,
                ),
              ],
            ),
          ],
        ));
  }
}
