// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';

class MediaAppBar extends StatelessWidget {
  final Function()? MenuTiklama;

  const MediaAppBar({super.key, this.MenuTiklama});

  String ekranTanimla(double width) {
    // AppBar Responsive Boyutlandırma
    if (width <= 576) {
      // Mobile
      return "mobile";
    } else if (width <= 768) {
      // Tablet
      return "tablet";
    } else if (width <= 992) {
      // Desktop
      return "desktop";
    } else {
      //Large
      return "large";
    }
  }

  Widget appBar(BuildContext, String device) {
    if (device == "mobile" || device == 'tablet') {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              //AppBar Menu Icon - AppBar Logo
              children: [
                SizedBox(
                  width: 10,
                ),
                InkWell(onTap: MenuTiklama, child: Icon(Icons.menu)),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/logo_mini.jpg'), // ppBar Logo
              ],
            ),
            Row(
              // // AppBar 2 Icon - User Logo Card
              children: [
                Container(
                    //Notfication Icon
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
                Container(
                    //Notfication Icon
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF241B2E),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_sharp),
                    )),
                SizedBox(
                  width: 3.0,
                ),
                Container(
                  // User Logo Text
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
            )
          ],
        ),
      );
    }

    if (device == "desktop") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // AppBar Menu Icon - AppBar Logo
            children: [
              SizedBox(
                width: 8,
              ),
              Image.asset('assets/images/logo.jpg'),
            ],
          ),
          Row(
            children: [
              // AppBar Text
              Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              // AppBar Search - AppBar Card
              Container(
                height: 38,
                width: 102,
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
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Add Card",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Color(0xFF8320B1),
                ),
              )
            ],
          ),
          Row(
            // // AppBar 2 Icon - User Logo Card
            children: [
              Container(
                  //Notfication Icon
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
              Container(
                  //Notfication Icon
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF241B2E),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_sharp),
                  )),
              SizedBox(
                width: 3.0,
              ),
              Container(
                // Icon sağ tarafı user container
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
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // AppBar Menu Icon - AppBar Logo
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/logo.jpg'),
            ],
          ),
          Row(
            children: [
              // AppBar Text
              Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              // AppBar Search - AppBar Card
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
                width: 10,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Add Card",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Color(0xFF8320B1),
                ),
              )
              //),
            ],
          ),
          Row(
            // // AppBar 2 Icon - User Logo Card
            children: [
              Container(
                  //Notfication Icon
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
              Container(
                  //Notfication Icon
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF241B2E),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_sharp),
                  )),
              SizedBox(
                width: 3.0,
              ),
              Container(
                // Icon sağ tarafı user container
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
          )
        ],
      );
    }
  }

// AppBar Style Kısmı - AppBar Media

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);
    return Container(
        color: Color(0xFF191321),
        height: 60,
        width: double.infinity,
        child: appBar(context, device));
  }
}
