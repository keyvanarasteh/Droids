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
      width: 288,
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Genel Kullanıcı Profil + Bilgi Headr kısmı
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
                // Menu ListTile
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                      // Menu Home
                    ListTile(

                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/Home_Screen");
                      },
                    ),
                      // Menu Invocies
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/Profile_Screen");
                      },
                    ),
                      //Menu Withdraw
                    ListTile(
                      leading: Icon(Icons.insert_chart_outlined_rounded),
                      title: Text("Share"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/Shape_Screen");
                      },
                    ),
                      //Menu My Bank
                    ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text("Add Card"),
                      onTap: () {
                        Navigator.of(context).pushNamed("/card");
                      },
                    ),
                    Divider(),
                      //Menu My Bank
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text("Request"),
                      onTap: () => null,
                    ),
                      //Menu My Bank
                    ListTile(
                      leading: Icon(Icons.description_outlined),
                      title: Text("Policies"),
                      onTap: () => null,
                    ),
                      //Menu Settings
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      onTap: () => null,
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
              //Menu Logout
            ListTile(
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
