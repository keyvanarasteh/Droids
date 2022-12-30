// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:proje/home/screen/genel.dart';
import 'package:proje/profil/screen/genel.dart';
import 'package:proje/trade/shape.dart';

class MediaDrawerMiniV2 extends StatefulWidget {
  const MediaDrawerMiniV2({super.key});

  @override
  State<MediaDrawerMiniV2> createState() => _MediaDrawerMiniV2State();
}

class _MediaDrawerMiniV2State extends State<MediaDrawerMiniV2> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF241B2E),
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Mr. Chaychi'),
              accountEmail: Text('chaychi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/avatar.jpg',
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover)),
            ),
            Column(
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
                  ],
                ),
              ],
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
      ),
    );
  }
}
