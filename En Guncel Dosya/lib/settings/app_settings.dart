// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje/common/main_appbar.dart';
import 'package:proje/common/media_drawer_v2.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue1) {
    setState(() {
      val2 = newValue1;
    });
  }

  onChangeFunction3(bool newValue1) {
    setState(() {
      val3 = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 38.0),
                  child: Container(
                    width: 270,
                    color: Color(0xFF191321),
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/avatar.jpg',
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Text("Mr Chaychi"),
                        Text("+56 65985 45698"),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            backgroundColor: const Color(0xff1b447b),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 16, right: 16, top: 11, bottom: 11),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/Profile_Screen");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color(0xff241B2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      customSwitch("Busy Mode", val1, 'assets/images/mod.png',
                          onChangeFunction1),
                      customSwitch("Notifications", val2,
                          'assets/images/notifications.png', onChangeFunction2),
                      customSwitch("Private Account", val3,
                          'assets/images/shield.png', onChangeFunction3)
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color(0xff241B2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.0, left: 6.0, right: 8.0),
                    child: Column(
                      children: [
                        Option("Security & Privacy", Icons.arrow_forward_ios,
                            'assets/images/lock.png'),
                        Option("Text Size", Icons.arrow_forward_ios,
                            'assets/images/text.png'),
                        Option("Languages", Icons.arrow_forward_ios,
                            'assets/images/language.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color(0xFF241B2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.0, left: 6.0, right: 8.0),
                    child: Column(
                      children: [
                        Option("Send us a message", Icons.arrow_forward_ios,
                            'assets/images/message.png'),
                        Option("About Us", Icons.arrow_forward_ios,
                            'assets/images/about.png'),
                        Option("FAQs", Icons.arrow_forward_ios,
                            'assets/images/faq.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget customSwitch(String text, bool val, image, Function onChangeMethod) {
    return Padding(
        padding: EdgeInsets.only(top: 11.0, left: 6.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    image,
                    width: 37,
                    height: 37,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Text(
                    text,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CupertinoSwitch(
                    trackColor: Colors.grey,
                    activeColor: Colors.green,
                    value: val,
                    onChanged: (newValue) {
                      onChangeMethod(newValue);
                    })
              ],
            )
          ],
        ));
  }

  Widget Option(String text, icon, image) {
    return Padding(
        padding: EdgeInsets.only(top: 11.0, left: 6.0, right: 8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      image,
                      width: 37,
                      height: 37,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      text,
                    ),
                  ),
                ],
              ),
              Row(
                children: [InkWell(onTap: () {}, child: Icon(icon))],
              )
            ],
          ),
        ));
  }
}
