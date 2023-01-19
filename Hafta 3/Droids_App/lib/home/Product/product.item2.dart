// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Productitem2 extends StatelessWidget {
  final String Logo_Name;
  final String Date;
  final String Time;
  final String Amount;
  final String Logo;

  const Productitem2({
    Key? key,
    required this.Logo_Name,
    required this.Date,
    required this.Time,
    required this.Amount,
    required this.Logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Logo_Name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Date,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            Time,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      trailing: Container(
          child: Text(
        Amount,
        style: TextStyle(color: Colors.white),
      )),
      leading: SizedBox(
        width: 60,
        height: 60,
        child: Container(
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFF241B2E),
            image: DecorationImage(
              image: AssetImage(
                Logo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
