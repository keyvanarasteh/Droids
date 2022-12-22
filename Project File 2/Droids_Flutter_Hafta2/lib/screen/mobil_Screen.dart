// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobilScreen extends StatefulWidget {
  const MobilScreen({super.key});

  @override
  State<MobilScreen> createState() => _MobilScreenState();
}

enum Cinsiyet {
  erkek,
  kadin,
  Ozel,
  Ozel2,
}

class _MobilScreenState extends State<MobilScreen> {
  onayAL() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
              title: Text("Confirmation"),
              content: Text("Do you approve removing the file?"),
              actions: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Text("Accept")),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Text("Decline")),
              ],
            ));
  }

  onaybuton() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
              title: Text("Save Profile"),
              content: Text("Do you want to save the profile?"),
              actions: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Text("Accept")),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Text("Decline")),
              ],
            ));
  }

  Cinsiyet? userSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: Container(
        width: MediaQuery.of(context).size.width + 100,
        height: MediaQuery.of(context).size.height - 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF241B2E),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Edit Photo , Button Start

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/avatar.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 52, bottom: 8),
                            child: Text(
                              "Mr. Chaychi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          onayAL();
                        },
                        child: Text("Change profile photo"),
                      ),
                    ],
                  ),
                ],
              ),
              // Edit Photo , Button End
              SizedBox(
                height: 0,
              ),
              // Name Text Start
              Container(
                width: double.infinity,
                child: Text(
                  "Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              // Name Text End
              SizedBox(
                height: 5,
              ),
              // Write Your Name Box
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color(0xFF46414D),
                    border: Border.all(color: Color(0xFF46414D)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Write your name"),
                  ),
                ),
              ),
              // Write Your Name Box End
              SizedBox(
                height: 5,
              ),
              // 1st paragraph Start
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Help people discover your account using your first and last name, a nickname, or a familiar name such as your business name. \n\nYou can change your name only 2 times in 14 days",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 1st paragraph End
              SizedBox(
                height: 5,
              ),
              // Username Text Start
              Container(
                width: double.infinity,
                child: Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              // Username Text End
              SizedBox(
                height: 15,
              ),
              // Write Your Username Box Start
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF46414D),
                    border: Border.all(color: Color(0xFFFF46414D)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write your username"),
                  ),
                ),
              ),
              // Write Your Username Box End
              SizedBox(
                height: 5,
              ),
              // E-mail Text Start
              Container(
                width: double.infinity,
                child: Text(
                  "E-mail",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              // E-mail Text End
              SizedBox(
                height: 3,
              ),
              // Write Your E-mail Address Box Start
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF46414D),
                    border: Border.all(color: Color(0xFFFF46414D)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write your e-mail address"),
                  ),
                ),
              ),
              // Write Your E-mail Address Box End
              SizedBox(
                height: 3,
              ),
              // Phone Number Text Start
              Container(
                width: double.infinity,
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              // Phone Number Text End
              SizedBox(
                height: 3,
              ),
              // Write Your Phone Number Box Start
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF46414D),
                    border: Border.all(color: Color(0xFFFF46414D)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write your phone number"),
                  ),
                ),
              ),
              // Write Your Phone Number Box End
              SizedBox(
                height: 3,
              ),
              // Gender Text Start
              Container(
                width: double.infinity,
                child: Text(
                  "Gender",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              // Gender Text End
              SizedBox(
                height: 3,
              ),
              // Gender Selection Box Start
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Wrap(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Male",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                            Radio(
                                value: Cinsiyet.erkek,
                                groupValue: userSex,
                                onChanged: (value) {
                                  userSex = value;
                                  setState(() {});
                                }),
                          ],
                        ),
                        SizedBox(
                          width: 97,
                        ),
                        Column(
                          children: [
                            Text(
                              "Female",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                            Radio(
                                value: Cinsiyet.kadin,
                                groupValue: userSex,
                                onChanged: (value) {
                                  userSex = value;
                                  setState(() {});
                                }),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Special",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                            Radio(
                                value: Cinsiyet.Ozel,
                                groupValue: userSex,
                                onChanged: (value) {
                                  userSex = value;
                                  setState(() {});
                                }),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: [
                            Text(
                              "I prefer not to say",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                            Radio(
                                value: Cinsiyet.Ozel2,
                                groupValue: userSex,
                                onChanged: (value) {
                                  userSex = value;
                                  setState(() {});
                                }),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 60,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              onaybuton();
                            },
                            child: Text("Save"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
              // Gender Selection Box End
            ],
          ),
        ),
      ),
    );
  }
}
