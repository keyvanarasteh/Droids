import 'package:flutter/material.dart';
import 'package:proje/common/main_appbar.dart';
import 'package:proje/common/media_drawer_v2.dart';

enum Device {
  mobile,
  tablet,
  desktop,
  large,
}

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  List<dynamic> products = [
    {
      "title": "About your loan application.",
      "writing": "Congratulations !! Your loan application has been approved.",
    },
    {
      "title": "Credit card overdraft approach.",
      "writing":
          "Your card limit is almost over, we recommend you to pay attention.",
    },
    {
      "title": "Your credit card payment deadline is approaching.",
      "writing": "Your due date is 2023-12-15.",
    },
    {
      "title": "Money has arrived in your account.",
      "writing": "250 TL has been added to your account.",
    },
    {
      "title": "About your home loan application.",
      "writing":
          "Congratulations !! Your home loan application has been approved.",
    },
    {
      "title": "About your Health Insurance application.",
      "writing": "Your transaction was invalid due to lack of documents.",
    },
    {
      "title": "Automatic payment",
      "writing":
          "79.99 TL payment has been made from your account for your TV series package..",
    },
    {
      "title": "Automatic payment",
      "writing":
          "140 TL payment has been made from your account for your transportation package..",
    }
  ];
  Device detecDevice(width) {
    if (width < 576) {
      return Device.mobile;
    } else if (width < 768) {
      return Device.tablet;
    } else if (width < 1024) {
      return Device.desktop;
    } else {
      return Device.large;
    }
  }

  @override
  Widget build(BuildContext context) {
    var device = detecDevice(MediaQuery.of(context).size.width);
    return Scaffold(
        drawer: MediaDrawerMiniV2(),
        appBar: AppBar(
          backgroundColor: Color(0xFF191321),
          actions: const [MainAppBar()],
          title: Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Container(
              child: Image.asset(
                'assets/images/logo_mini.jpg',
                width: 44,
                height: 44,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF191321),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: products.length,
                (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF241B2E),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products[index]["title"],
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              products[index]["writing"],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: device == Device.mobile
                      ? 1
                      : device == Device.tablet
                          ? 2
                          : device == Device.desktop
                              ? 3
                              : 4,
                  mainAxisExtent: 100,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 5),
            )
          ],
        ));
  }
}
