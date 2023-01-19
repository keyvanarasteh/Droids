// ignore_for_file: unnecessary_import, prefer_const_constructors, file_names, constant_identifier_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      backgroundColor: Color(0xFF191321),
      body: Container(
        width: MediaQuery.of(context).size.width + 100,
        height: MediaQuery.of(context).size.height / 1.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF241B2E),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                  height: 10,
                ),
                // Textfield , BoxDecoration and Gender Parts Start
                Column(
                  children: [
                    // Name Text Start
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    // Name Text End
                    SizedBox(
                      height: 15,
                    ),
                    // Write Your Name Box
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(
                            color: Color(0xFF46414D),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Write your name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Write Your Name Box End
                    SizedBox(
                      height: 15,
                    ),
                    // 1st paragraph Start
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Wrap(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Wrap(
                              children: [
                                Text(
                                  "Help people discover your account using a familiar name.\nYou can change your name only 2 times in 14 days.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 1st paragraph End
                    SizedBox(
                      height: 15,
                    ),
                    // Username Text Start
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Username",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
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
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(
                            color: Color(0xFF46414D),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Write your username',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Write Your Username Box End
                    SizedBox(
                      height: 15,
                    ),
                    // E-mail Text Start
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "E-mail",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    // E-mail Text End
                    SizedBox(
                      height: 15,
                    ),
                    // Write Your E-mail Address Box Start
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(
                            color: Color(0xFF46414D),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Write your e-mail address',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Write Your E-mail Address Box End
                    SizedBox(
                      height: 15,
                    ),
                    // Phone Number Text Start
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    // Phone Number Text End
                    SizedBox(
                      height: 15,
                    ),
                    // Write Your Phone Number Box Start
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF46414D),
                          border: Border.all(
                            color: Color(0xFF46414D),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[0-9]"))
                            ],
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write your phone number"),
                          ),
                        ),
                      ),
                    ),
                    // Write Your Phone Number Box End
                    SizedBox(
                      height: 15,
                    ),
                    // Gender Text Start
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Gender",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    // Gender Text End
                    SizedBox(
                      height: 15,
                    ),
                    // Gender Selection Box Start
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "  Male  ",
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
                          ],
                        ),
                        Column(
                          children: [
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
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 30,
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
                    // Gender Selection Box End
                  ],
                )
                // Textfield , BoxDecoration and Gender Parts End
              ],
            ),
          ),
        ),
      ),
    );
  }
}
