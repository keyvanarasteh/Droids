import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  checkDevice(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height / 4;
    var deviceType = checkDevice(scrWidth);
    Map<String, double> dataMap = {
      "Credit": 2,
      "Communal": 5,
      "Gambling": 2,
      "Other": 1,
    };
    if (deviceType == "mobile") {
      return Scaffold(
        backgroundColor: Color(0xFF191321),
        body: Container(
          // Çarklar
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width + 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF241B2E),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                radius: MediaQuery.of(context).size.width / 8,
                lineWidth: 18,
                percent: 60 / 100,
                animation: true,
                animationDuration: 1000,
                center: new Text(
                  "60%",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(width: 5),
              PieChart(
                dataMap: dataMap,
                chartType: ChartType.ring,
                chartRadius: MediaQuery.of(context).size.width / 5,
                chartValuesOptions: ChartValuesOptions(showChartValues: false),
                centerText: "37%",
              )
            ],
          ),
        ),
      );
    } else if (deviceType == "desktop") {
      return Scaffold(
        backgroundColor: Color(0xFF191321),
        body: Container(
          // Çarklar
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width + 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF241B2E),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                radius: MediaQuery.of(context).size.height / 14.6,
                lineWidth: 18,
                percent: 60 / 100,
                animation: true,
                animationDuration: 1000,
                center: new Text(
                  "60%",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(width: 5),
              PieChart(
                dataMap: dataMap,
                chartType: ChartType.ring,
                chartRadius: MediaQuery.of(context).size.height / 9,
                chartValuesOptions: ChartValuesOptions(showChartValues: false),
                centerText: "37%",
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Color(0xFF191321),
        body: Container(
          // Çarklar
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width + 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF241B2E),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                radius: MediaQuery.of(context).size.height / 12,
                lineWidth: 18,
                percent: 60 / 100,
                animation: true,
                animationDuration: 1000,
                center: new Text(
                  "60%",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(width: 5),
              PieChart(
                dataMap: dataMap,
                chartType: ChartType.ring,
                chartRadius: MediaQuery.of(context).size.height / 7,
                chartValuesOptions: ChartValuesOptions(showChartValues: false),
                centerText: "37%",
              )
            ],
          ),
        ),
      );
    }
  }
}
