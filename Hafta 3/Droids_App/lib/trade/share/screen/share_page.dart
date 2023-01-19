import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:proje/home/device/desktop.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:proje/trade/share/screen/share_buy.dart';

enum Device {
  mobile,
  tablet,
  desktop,
  large,
}

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  List<dynamic> products = [
    {
      "name": "ZOREN",
      "abbreviation": "zrn",
      "image": "assets/images/logo1.png",
      "price": "281.196.691",
      "change": "+ 0,96%"
    },
    {
      "name": "AKSEN",
      "abbreviation": "aksn",
      "image": "assets/images/logo2.png",
      "price": "295.635.300",
      "change": "+ 1,55%"
    },
    {
      "name": "ODAS",
      "abbreviation": "Ods",
      "image": "assets/images/logo3.png",
      "price": "398.667.952",
      "change": "+ 0,35%"
    },
    {
      "name": "AYEN",
      "abbreviation": "Ayn",
      "image": "assets/images/logo4.png",
      "price": "59.942.851",
      "change": "+ 1,76%"
    },
    {
      "name": "AKSUE",
      "abbreviation": "Aks",
      "image": "assets/images/logo5.png",
      "price": "8.751.700",
      "change": "- 0,81%"
    },
    {
      "name": "AKENR",
      "abbreviation": "Aknr",
      "image": "assets/images/logo6.png",
      "price": "48.753.468",
      "change": "+ 1,85%"
    },
    {
      "name": "ENJSA",
      "abbreviation": "Enjs",
      "image": "assets/images/logo7.png",
      "price": "946.389.096",
      "change": "+ 7,45%"
    },
    {
      "name": "NATEN",
      "abbreviation": "Ntn",
      "image": "assets/images/logo8.png",
      "price": "19.619.537",
      "change": "+ 1.42%"
    },
    {
      "name": "ESEN",
      "abbreviation": "Esn",
      "image": "assets/images/logo9.png",
      "price": "48.445.241",
      "change": "+ 3.36%"
    },
    {
      "name": "PAMEL",
      "abbreviation": "Pml",
      "image": "assets/images/logo10.png",
      "price": "14.090.207",
      "change": "+ 6.44%"
    },
    {
      "name": "NTGAZ",
      "abbreviation": "Ntg",
      "image": "assets/images/logo11.png",
      "price": "99.002.920",
      "change": "+ 6.49%"
    },
    {
      "name": "GWIND",
      "abbreviation": "Gwn",
      "image": "assets/images/logo12.png",
      "price": "70.502.251",
      "change": "- 0.26%"
    },
    {
      "name": "BIOEN",
      "abbreviation": "Bn",
      "image": "assets/images/logo13.png",
      "price": "43.413.539",
      "change": "- 1.31%"
    },
    {
      "name": "AYDEM",
      "abbreviation": "YDM",
      "image": "assets/images/logo14.png",
      "price": "57.156.410",
      "change": "- 1.02%"
    },
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
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 32, 43, 1),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Center(
                  child: Text(
                "Energy Share",
                style: TextStyle(fontSize: 28),
              )),
              elevation: 5,
              expandedHeight: MediaQuery.of(context).size.height / 4,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/energywp.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: products.length,
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/share_page");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                child: Image.asset(
                                  products[index]["image"],
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(products[index]["abbreviation"]),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    products[index]["name"],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: 60,
                            height: 30,
                            child: Sparkline(
                              data: data,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                products[index]["price"],
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                products[index]["change"],
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
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
        ),
      ),
    );
  }
}
