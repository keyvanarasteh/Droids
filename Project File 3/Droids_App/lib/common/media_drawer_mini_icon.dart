// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:proje/home/screen/genel.dart';
import 'package:proje/profil/screen/genel.dart';

class MediaDrawerMiniIcon extends StatefulWidget {
  const MediaDrawerMiniIcon({super.key});

  @override
  State<MediaDrawerMiniIcon> createState() => _MediaDrawerMiniIconState();
}

class _MediaDrawerMiniIconState extends State<MediaDrawerMiniIcon> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF241B2E),
      width: 140,
      child: 
      Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, //Menü column konumlandırma
        children: [
          // Menu ListTile
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
                // Menu Home
              ListTile(

                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pushNamed("/Home_Screen");
                },
              ),
                // Menu Invocies
              ListTile(
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pushNamed("/Profile_Screen");
                },
              ),
                //Menu Withdraw
              ListTile(
                leading: Icon(Icons.insert_chart_outlined_rounded),
                onTap: () {
                  Navigator.of(context).pushNamed("/Shape_Screen");
                },
              ),
                //Menu My Bank
              ListTile(
                leading: Icon(Icons.credit_card),

                onTap: () {
                  Navigator.of(context).pushNamed("/card");
                },
              ),
              Divider(),
                //Menu Settings
              ListTile(
                leading: Icon(Icons.notifications),

                onTap: () => null,
              ),
                //Menu Settings
              ListTile(
                leading: Icon(Icons.description_outlined),

                onTap: () => null,
              ),
                //Menu Settings
              ListTile(
                leading: Icon(Icons.settings),

                onTap: () => null,
              ),
              Divider(),
                //Menu Logout
              ListTile(
                leading: Icon(Icons.logout_outlined),

                onTap: () => null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
