// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proje/common/media_drawer_mini.dart';
import 'package:proje/common/mediaappbar.dart';
import 'package:proje/profil/screen/media_configuration.dart';
import 'package:proje/profil/screen/media_profile_leftsidebar.dart';
import 'package:proje/profil/screen/mobil_Screen.dart';
import 'package:proje/profil/screen/widgets_screen.dart';

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
      drawer: MediaDrawerMini(),
      appBar: AppBar(
        backgroundColor: Color(0xFF191321),
        actions: [
          Row(
            // // AppBar 2 Icon - User Logo Card
            children: [
              Container(
                  //Notfication Icon
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF241B2E),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mail_outline_outlined),
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  //Notfication Icon
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF241B2E),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_sharp),
                  )),
              SizedBox(
                width: 3.0,
              ),
              Container(
                // User Logo Text
                padding: EdgeInsets.only(right: 20),
                height: 32,
                decoration: BoxDecoration(
                  color: Color(0xFF241B2E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  Text("Mr Chaychi")
                ]),
              ),
            ],
          )
        ],
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
