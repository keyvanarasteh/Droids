// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MediaDrawerMini extends StatelessWidget {
  const MediaDrawerMini({super.key});

   @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      color:Color.fromARGB(162, 25, 19, 33),
      child:Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  //Menü column konumlandırma
        children: [
        Column(
          children: [
            SizedBox(height: 40,),
            ListTile( // Menu Home

              leading:Icon(Icons.home),
              title:  Text("Home"),   
            ),
            ListTile( // Menu Invocies
              leading:Icon(Icons.article),
              title:  Text("Invocies"), 

            ),
            ListTile( //Menu Withdraw
              leading:Icon(Icons.money),
              title: Text("Withdraw"),
            ),
            ListTile( //Menu My Bank
              leading:Icon(Icons.account_balance_outlined),
              title:  Text("My Bank"),
            ),
            ListTile( //Menu Settings
              leading: Icon(Icons.settings),
              title: Text("Settings"), 
            ),           
          ],
        ),
          ListTile( //Menu Logout
          leading: Icon(Icons.logout_outlined),
           title:  Text("Logout"),
          ),
      ],)
    );
  }
}