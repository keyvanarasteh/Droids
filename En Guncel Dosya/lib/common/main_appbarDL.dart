// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainAppBarDl extends StatelessWidget {
  const MainAppBarDl({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // // AppBar 2 Icon - User Logo Card
      children: [
        Container(
          height: 38,
          width: 122,
          decoration: BoxDecoration(
            color: Color(0xFF241B2E),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xFF9088E4),
                  ),
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 70,
        ),
        //Notfication Icon
        Container(
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
        //Notfication Icon
        Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xFF241B2E),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/notificationn");
              },
              icon: Icon(Icons.notifications_none_sharp),
            )),
        SizedBox(
          width: 3.0,
        ),
        // User Logo Text
        // Avatar Logo and Text
        Container(
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
    );
  }
}
