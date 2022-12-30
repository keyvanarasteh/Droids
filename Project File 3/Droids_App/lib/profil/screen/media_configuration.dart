// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

//import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileConfig extends StatefulWidget {
  const ProfileConfig({super.key});

  @override
  State<ProfileConfig> createState() => _ProfileConfigState();
}

class _ProfileConfigState extends State<ProfileConfig> {
  double sliderSayisi = 0; //slider başlangıç değeri
  double opacitykontrol =
      1; //1 den başlatır aşağıdaki iconlarla değiştirdiğimiz değer
  Set<String> userdata =
      {}; //Dizimizin içindekileri tekrarlamaması için kullandık
  Set<String> skillss = {
    "Languange",
    "Experience",
    "Expertise",
    "Stock Market Tracking",
    "Expertise",
    "Finance",
    "Data",
    "Analysis",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF191321),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              // Munuleri kapsayan cotainerım
              width: MediaQuery.of(context).size.width + 100,
              height: MediaQuery.of(context).size.height / 1.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF241B2E),
              ),
              child: Column(
                  // Menu içeriğimin bulunduğu kısım
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      // Yüzde tahmin slider kısmı
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Planned Increase",
                                style: TextStyle(fontSize: 22),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Your Guess % ?"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          sliderSayisi.toString(),
                          style: TextStyle(fontSize: 40),
                        ),
                        Slider(
                          value: sliderSayisi,
                          min: 0,
                          max: 100,
                          divisions: 8,
                          onChanged: (value) {
                            setState(() {
                              sliderSayisi = value;
                            });
                          },
                        ),
                      ],
                    ), // Artış bitiş

                    Column(
                      children: [
                        // Yazı + İmage + Icons
                        Text(
                          "Focus Control",
                          style: TextStyle(fontSize: 22),
                        ),
                        Opacity(
                            // İmage özellikleri ve opacitykontrol fonksiyonu
                            opacity: opacitykontrol,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(22.0),
                                child: Image.asset(
                                  'assets/images/avatar.jpg',
                                  width: 120,
                                ))),
                        Padding(
                          // Opacity ayarlarımızı yaptığımız iconların row a padding
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Opacity ayarlarımızı yaptığımız iconlar

                              InkWell(
                                //opacity 0.2  | Icons.looks_one_outlined
                                onTap: () {
                                  opacitykontrol = 0.2;
                                  setState(() {});
                                },
                                child: Opacity(
                                    opacity: opacitykontrol,
                                    child: Icon(Icons.looks_one_outlined)),
                              ),

                              InkWell(
                                //opacity 0.4 | Icons.looks_two_outlined
                                onTap: () {
                                  opacitykontrol = 0.4;
                                  setState(() {});
                                },
                                child: Opacity(
                                    opacity: opacitykontrol,
                                    child: Icon(Icons.looks_two_outlined)),
                              ),

                              InkWell(
                                // opacity 0.6 | Icons.looks_3_outlined
                                onTap: () {
                                  opacitykontrol = 0.6;
                                  setState(() {});
                                },
                                child: Opacity(
                                    opacity: opacitykontrol,
                                    child: Icon(Icons.looks_3_outlined)),
                              ),

                              InkWell(
                                // opacity 1.0 | Icons.looks_4_outlined
                                onTap: () {
                                  opacitykontrol = 1.0;
                                  setState(() {});
                                },
                                child: Opacity(
                                    opacity: opacitykontrol,
                                    child: Icon(Icons.looks_4_outlined)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    // User Skills Başlangıç
                    Column(
                      // User skills kısmı
                      children: [
                        Text(
                          "Skills",
                          style: TextStyle(fontSize: 22),
                        ),
                        Wrap(
                          spacing: 3,
                          runSpacing: 5,
                          alignment: WrapAlignment.center,
                          children: ChipSkils(),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> ChipSkils() {
    //Chipleri getirme ve kullanıcının listesine ekleyip çıkartma işlemi
    // ignore: dead_code
    var widgets = skillss
        .map((e) => InputChip(
              label: Text(e),
              selected: userdata.contains(e),
              onSelected: ((value) {
                if (value) {
                  userdata.add(e);
                } else {
                  userdata.remove(e);
                }
                setState(() {});
              }),
              selectedColor: Colors.green,
            ))
        .toList();
    return widgets;
  }
}
