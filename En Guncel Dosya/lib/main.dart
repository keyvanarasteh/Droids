import 'dart:html';
import 'package:flutter/material.dart';
import 'package:proje/home/screen/genel.dart';
import 'package:proje/notification/not.dart';
import 'package:proje/settings/setting_main.dart';
import 'package:proje/trade/share/screen/card.dart';
import 'package:proje/trade/share/screen/share_buy.dart';
import 'package:proje/trade/share/screen/share_page.dart';
import 'profil/device/mobile2.dart';
import 'profil/device/mobile3.dart';
import 'profil/screen/genel.dart';
import 'trade/shape.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/share_page": (context) => ShareScreen(),
        "/Shape_Screen": (context) => ShapeScreen(),
        "/Profile_Screen": (context) => MainScreen2(),
        "/Home_Screen": (context) => MainScreen(),
        "/Profile_Section1": (context) => MainScreen2(),
        "/Profile_Section2": (context) => Mobile2(),
        "/Profile_Section3": (context) => Mobile3(),
        "/sliver": (context) => Share(),
        "/card": (context) => Cardd(),
        "/notificationn": (context) => Notificationn(),
        "/settings": (context) => SettingsMain(),
      },
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF191321),
      ),
      home: MainScreen(),
    );
  }
}
