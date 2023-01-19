// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MediaShape extends StatefulWidget {
  const MediaShape({super.key});

  @override
  State<MediaShape> createState() => _MediaShapeState();
}

class _MediaShapeState extends State<MediaShape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191321),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                child: Image.asset(
                  'assets/images/sekil.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.spaceAround,
                        runAlignment: WrapAlignment.spaceBetween,
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/sliver");
                            },
                            child: Container(
                                width: 185,
                                height: 196,
                                color: Color.fromARGB(200, 70, 55, 88),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/energy.png',
                                      width: 75,
                                      height: 95,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Energy Share",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("General stock trading",
                                        style:
                                            TextStyle(color: Color(0xFF6e6b71)))
                                  ],
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/sliver");
                            },
                            child: Container(
                                width: 185,
                                height: 196,
                                color: Color.fromARGB(200, 70, 55, 88),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/material.png',
                                      width: 75,
                                      height: 95,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Energy Share",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("General stock trading",
                                        style:
                                            TextStyle(color: Color(0xFF6e6b71)))
                                  ],
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/sliver");
                            },
                            child: Container(
                                width: 185,
                                height: 196,
                                color: Color.fromARGB(200, 70, 55, 88),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/isci.png',
                                      width: 75,
                                      height: 95,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Energy Share",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("General stock trading",
                                        style:
                                            TextStyle(color: Color(0xFF6e6b71)))
                                  ],
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/sliver");
                            },
                            child: Container(
                                width: 185,
                                height: 196,
                                color: Color.fromARGB(200, 70, 55, 88),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/health.png',
                                      width: 75,
                                      height: 95,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Energy Share",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("General stock trading",
                                        style:
                                            TextStyle(color: Color(0xFF6e6b71)))
                                  ],
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/sliver");
                            },
                            child: Container(
                                width: 185,
                                height: 196,
                                color: Color.fromARGB(200, 70, 55, 88),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/finance.png',
                                      width: 75,
                                      height: 95,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Energy Share",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("General stock trading",
                                        style:
                                            TextStyle(color: Color(0xFF6e6b71)))
                                  ],
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/sliver");
                            },
                            child: Container(
                                width: 185,
                                height: 196,
                                color: Color.fromARGB(200, 70, 55, 88),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/home.png',
                                      width: 75,
                                      height: 95,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Energy Share",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("General stock trading",
                                        style:
                                            TextStyle(color: Color(0xFF6e6b71)))
                                  ],
                                )),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
