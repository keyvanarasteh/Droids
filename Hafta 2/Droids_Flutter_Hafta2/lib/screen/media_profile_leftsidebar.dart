// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void

import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: Column(
        children: [
          Container(
            // Munuleri kapsayan cotainerım
            width: MediaQuery.of(context).size.width + 100,
            height: MediaQuery.of(context).size.height - 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF241B2E),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 0),
              child: Column(
                  // Menu içeriğimin bulunduğu kısım
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      //Menüde bulunan yazı buttonları
                      children: [
                        Container(
                          width: 3,
                          height: 22,
                          color: Color(0xFF5A2178),
                        ),
                        TextButton(
                          onPressed: () => null,
                          child: Text("Edit profile",
                              style: TextStyle(color: Color(0xFF5A2178))),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Change password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Security",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Apps",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Notifications",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Graphic Tracking",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Surveillance",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Advertisements",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Movements",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        "Financial Flow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text(
                        'Redound',
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
    );
  }
}
