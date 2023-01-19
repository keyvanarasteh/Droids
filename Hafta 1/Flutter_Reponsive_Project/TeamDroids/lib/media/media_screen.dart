// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, sort_child_properties_last

import 'package:deneme/Product/product.dart';
import 'package:deneme/Product/product.item2.dart';
import 'package:deneme/common/mediaappbar.dart';
import 'package:deneme/media/media_drawer_mini.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';


class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}



class _MediaScreenState extends State<MediaScreen> {


  bool MenuAciksa = false;

  //Ekran Boyutlandırmaları

  String ekranTanimla(double width){
if(width<=576){
  return "mobile";
}
else if(width<=942){
  return "tablet";
}
else if(width<=1200){
  return "desktop";
}
else{
  return "large";
}
}



 
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);
 
     
     Widget buildScreen(){
     
    // Ekran Boyutu Mobilse
 
      if(device == 'mobile' ){

        // Çark Değerlerinin ve yazılarının belirlenmesi
           Map<String, double> dataMap = {
          "|": 2,
          "||": 5,
          "|||": 2,
          "||||": 1,
  };

 

      return Scaffold(
          body: Stack(children: [
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
            child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
        
        children:[
          // Main BackGround
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color:Color(0xFF191321),
            child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children:[

        Container( // Credit Card Box
            height: 160,
            width: MediaQuery.of(context).size.width-20,
            child:Column(
            children: [
        
       
        Row(   //Cards Row
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
            SizedBox(width:10,),
            Image.asset('assets/images/card1.png',
            width: 160,
            height: 120,
            fit:BoxFit.fill  ), 
            SizedBox(width:10,),
            Image.asset('assets/images/card2.png',
            width: 160,
            height: 120,
            fit:BoxFit.fill  ),
        ],
              ), 
       
        Row(   // Cards Row Text
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
            Text("EXPIRE DATA",style:TextStyle(
            color:Color(0xFF615D68)
            ),),

            Text("CVC/CVV",style:TextStyle(
            color:Color(0xFF615D68)
            ),),

            Text("STATUS",style:TextStyle(
            color:Color(0xFF615D68)
            ),),
            ],),
                              
          Row( // Cards Row Bottom Text
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
              Text("12/26"),
              Text("...,..."),
              Text("Active"),
            ],)
            ],), 
            //Card Container Design          
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:Color(0xFF191321
              ),),),
          Container( // Çarklar
              height: 210,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:Color(0xFF211627),),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children:[   
          
          Row( // 1.Çark
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CircularPercentIndicator(
              radius: MediaQuery.of(context).size.width / 9,
              lineWidth:18,
              percent: 60 / 100,
              animation: true,
              animationDuration: 1000,
              center: new Text( "60%",
              style: TextStyle(fontSize: 14),),
              header: Column(
              children:[       
                ],
                  ),
                     ),
                       ],
                          ),
          SizedBox(width: 5),
          Row(children: [ // 2. Çark
          PieChart(
              dataMap: dataMap,
              chartType: ChartType.ring,
              chartRadius: MediaQuery.of(context).size.width / 5.5,
              chartValuesOptions:
              ChartValuesOptions(showChartValues: false),
              centerText: "37%",
                ),
                  ],
                    )
                      ],
                        ),
                          ),
          Container(    // Kutu3 Send Money
              height: 190,
              width: MediaQuery.of(context).size.width-20,
             child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 250,top:22),
                child: Text("SEND MONEY"),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    NewWidget(
                      resim: "assets/images/add.jpg",
                      yazi: "Add",
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    NewWidget(
                      resim: "assets/images/add.jpg",
                      yazi: "Add",
                    ),
                    SizedBox(
                    width: 16,
                    ),
                    NewWidget(
                      resim: "assets/images/add.jpg",
                      yazi: "Add",
                    ),
                    SizedBox(
                   width: 16,
                    ),
                    NewWidget(
                      resim: "assets/images/is_hayati.jpg",
                      yazi: "Lucas",
                    ),
                    SizedBox(
                    width: 16,
                    ),
                    NewWidget(
                      resim: "assets/images/resim.jpg",
                      yazi: "Mike",
                    ),
                    SizedBox(
                   width: 16,
                    ),
                    NewWidget(
                      resim: "assets/images/resim2.jpg",
                      yazi: "Jaff",
                    ),
                    SizedBox(
                  width: 16,
                    ),
                    NewWidget(
                      resim: "assets/images/resim3.jpg",
                      yazi: "Mary",
                    ),
                  ],
                ),
              ),
            ],
          ),
              
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:Color(0xFF211627),
                ),
                 
                  )
                    ],
                       ),
                         ),
                            ], )  ),  ),
         
            Row(  //Menu Konumlandırma Ve Fonskiyon
             
              children: [
            Container(
              child: MenuAciksa ? Positioned(
              child: MediaDrawerMini(),
              ) : Positioned(width:0,height:0,child: Text(''),),
                ),
                  ],
                    ),
                      ],
                        )
                          );
 
 
    return Container();
      }

        // Ekran Boyutu Tabletse
      else if(device=='tablet') {
        
      // Çark Değerlerinin ve yazılarının belirlenmesi
        Map<String, double> dataMap = { 
          
          "Credit": 2,
          "Communal": 5,
          "Gambling": 2,
          "Other": 1,
      };
      
     
     return Scaffold(
       body:Stack(children: [
           
           
           SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Expanded(
                child:Row( 
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
              Container( // Main BackGround
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color:Color(0xFF191321),
                child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Container( // Credit Cards Box
                height: 220,
                width: MediaQuery.of(context).size.width-20,
                child:Column(children: [
              
              Row( // Credit Cards Images
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                SizedBox(width:10,),
                Image.asset('assets/images/card1.png',
                width: 200,
                height: 120,
                fit:BoxFit.fill  ), 
                SizedBox(width:10,),
                Image.asset('assets/images/card2.png',
                width: 200,
                height: 120,
                fit:BoxFit.fill  ),
              
              Column( //Credit Card Text
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                Text("EXPIRE DATA",style:TextStyle(
                color:Color(0xFF615D68)
                ),),
                Text("CVC/CVV",style:TextStyle(
                color:Color(0xFF615D68)
                ),),
                Text("STATUS",style:TextStyle(
                color:Color(0xFF615D68)
                ),), 
                ],),
              
              Column(//Credit Card Right Text
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                Text("12/26"),
                Text("...,..."),
                Text("Active"),
                ],) ], ), 
                ],),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Color(0xFF191321),
                ),
                  ),
                      
               Container( // 1.Çember + Çember Box
                height: 210,
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Color(0xFF211627),),
                
                child: Row( //Çember Row
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
              
              Row(  //1. Çember
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CircularPercentIndicator(
                radius: MediaQuery.of(context).size.width / 9,
                lineWidth:18,
                percent: 60 / 100,
                animation: true,
                animationDuration: 1000,
                center: new Text( "60%",
                style: TextStyle(fontSize: 14),),
                header: Column(
                children:[            
                      ],
                    ),
                  ),
                SizedBox(width: 5),
                   ],
                      ),
              Row(children: [ //2. Çember
              PieChart(
                dataMap: dataMap,
                chartType: ChartType.ring,
                chartRadius: MediaQuery.of(context).size.width / 5.5,
                chartValuesOptions:
              ChartValuesOptions(showChartValues: false),
                centerText: "37%",
                 ),
                  ],
                    ) 
                      ],
                         ),
                            ),
              Container(    //Kutu3
                height: 220,
                width: MediaQuery.of(context).size.width-20,
                child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 250,top:22),
                child: Text("SEND MONEY"),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    NewWidget(
                      resim: "assets/images/add.jpg",
                      yazi: "Add",
                    ),
                    SizedBox(
                      width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/add.jpg",
                      yazi: "Add",
                    ),
                    SizedBox(
                     width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/add.jpg",
                      yazi: "Add",
                    ),
                    SizedBox(
                      width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/is_hayati.jpg",
                      yazi: "Lucas",
                    ),
                    SizedBox(
                      width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/resim.jpg",
                      yazi: "Mike",
                    ),
                    SizedBox(
                    width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/resim2.jpg",
                      yazi: "Jaff",
                    ),
                    SizedBox(
                    width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/resim3.jpg",
                      yazi: "Mary",
                    ),
                     SizedBox(
                    width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/resim3.jpg",
                      yazi: "Mary",
                    ),
                      SizedBox(
                    width: 44,
                    ),
                    NewWidget(
                      resim: "assets/images/resim3.jpg",
                      yazi: "Mary",
                    ),
                  ],
                ),
              ),
            ],
          ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Color(0xFF211627),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            ),
           
            Row( //Menu Konumlandırma Ve Fonskiyon
              children: [
            Container(
              child: MenuAciksa ? Positioned(
              child: MediaDrawerMini(),)
             :Positioned(width:0,height:0,child: Text(''),),
                     ),
                    ],
                   ),
                  ],
              ),
     ); }

          else if(device=='desktop' || device=='large') {

            // Çark Değerlerinin ve yazılarının belirlenmesi
            Map<String, double> dataMap = {
          "Credit": 2,
          "Communal": 5,
          "Gambling": 2,
          "Other": 1,
      };
  
        return Scaffold(
        body:Stack(children: [
                SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Expanded(
                child:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color:Color(0xFF191321),
                child:Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                     Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children:[
                              Row(
                                children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                       Container( //  Credit Card Box
                        height: 170,
                        width: MediaQuery.of(context).size.width-520,
                        child:Column(children: [
                        
                      Row( // Credit Card Images
                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                        children: [
                        SizedBox(width:10,),
                        Image.asset('assets/images/card1.png',
                        width: 200,
                        height: 120,
                        fit:BoxFit.fill), 
                        SizedBox(width:10,),
                        Image.asset('assets/images/card2.png',
                        width: 200,
                        height: 120,
                        fit:BoxFit.fill  ),
                          ],
                             ), 
                        
                        Row( // Credit Card Text
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                          Text("EXPIRE DATA",style:TextStyle(
                          color:Color(0xFF615D68)
                          ),),
                                          
                          Text("CVC/CVV",style:TextStyle(
                          color:Color(0xFF615D68)
                          ),),
                          
                          Text("STATUS",style:TextStyle(
                          color:Color(0xFF615D68)
                          ),),  
                          ],),
                                     
                        Row( // Credit Card Bottom Text
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                          Text("12/26"),
                          Text("...,..."),
                          Text("Active"),
                          ],)
                          ],),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:Color(0xFF191321),
                          ),),
                        
                        Container( // Çemberler
                          height: MediaQuery.of(context).size.height / 2.4,
                          width: MediaQuery.of(context).size.width-350,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:Color(0xFF211627),),
                          
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                        
                        Row( // 1. Çember
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          CircularPercentIndicator(
                          radius: MediaQuery.of(context).size.width / 9,
                          lineWidth:18,
                          percent: 60 / 100,
                          animation: true,
                          animationDuration: 1000,
                          center: new Text( "60%",
                          style: TextStyle(fontSize: 14),),
                          
                                  ),
                                    ],
                                      ),
                  
                        SizedBox(width: 5),
                      Row( // 2. Çember
                        children: [
                      PieChart( //2. Çember
                          dataMap: dataMap,
                          chartType: ChartType.ring,
                          chartRadius: MediaQuery.of(context).size.width / 5.5,
                          chartValuesOptions:
                        ChartValuesOptions(showChartValues: false),
                          centerText: "37%",
                              ),
                                ],
                                  )
                                    ],
                                      ),
                                        ),
                        
                        Container(    //Kutu3
                          height: 170,
                          width: MediaQuery.of(context).size.width-370,
                          child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 250,top:22),
                        child: Text("SEND MONEY"),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            NewWidget(
                              resim: "assets/images/add.jpg",
                              yazi: "Add",
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/add.jpg",
                              yazi: "Add",
                            ),
                            SizedBox(
                            width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/add.jpg",
                              yazi: "Add",
                            ),
                            SizedBox(
                           width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/is_hayati.jpg",
                              yazi: "Lucas",
                            ),
                            SizedBox(
                            width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/resim.jpg",
                              yazi: "Mike",
                            ),
                            SizedBox(
                           width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/resim2.jpg",
                              yazi: "Jaff",
                            ),
                            SizedBox(
                          width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/resim3.jpg",
                              yazi: "Mary",
                            ),
                            SizedBox(
                          width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/is_hayati.jpg",
                              yazi: "Lucas",
                            ),
                            SizedBox(
                          width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/resim2.jpg",
                              yazi: "Jaff",
                            ),
                            SizedBox(
                          width: 16,
                            ),
                            NewWidget(
                              resim: "assets/images/resim3.jpg",
                              yazi: "Mary",
                            ),
                          ],
                        ),
                      ),
                    ],
                            ),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:Color(0xFF211627),
                             ),
                               )
                                ],
                                 ),
                                ],
                              ),
                        
                        //Rifht Bar Last Transaction
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                         
                          children: [
                        
                        Container( 
                          
                          width: MediaQuery.of(context).size.width/3.3,
                          height:MediaQuery.of(context).size.height-180,
                          color:Color(0xFF211627),
                  
                          child:Column(
                                    children: [ 
                                    Padding(
                            padding: EdgeInsets.only(right:0 ),
                            child: Text(
                            "Last Transaction",
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                                    ),
                        ),
                                    Expanded(
                          child: ListView(
                            children: [
                              Productitem2(
                                productTitle: "Nike",
                                productSubtitle: "Today",
                                productSubtitle2: "16.48 P.M.",
                                productTrailing: "\$ 136.60",
                                productLeading: "images/nike.png",
                              ),
                            Productitem2(
                                productTitle: "Amazon",
                                productSubtitle: "Today",
                                productSubtitle2: "23.56 P.M.",
                                productTrailing: "\$ 2879.99",
                                productLeading: "images/amazon.png",
                              ),
                              Productitem2(
                                productTitle: "Razer",
                                productSubtitle: "Yesterday",
                                productSubtitle2: "18.20 P.M.",
                                productTrailing: "\$ 487.25",
                                productLeading: "images/razer.png",
                              ),
                               Productitem2(
                                productTitle: "Facebook",
                                productSubtitle: "Yesterday",
                                productSubtitle2: "08.17 A.M.",
                                productTrailing: "\$ 670.48",
                                productLeading: "images/facebook.png",
                              ),
                               Productitem2(
                                productTitle: "Dribble",
                                productSubtitle: "Yesterday",
                                productSubtitle2: "11.05 A.M.",
                                productTrailing: "\$ 42.00",
                                productLeading: "images/dribble.png",
                              ),
                               Productitem2(
                                productTitle: "Starbucks",
                                productSubtitle: "Yesterday",
                                productSubtitle2: "15.59 P.M.",
                                productTrailing: "\$ 2431.06",
                                productLeading: "images/Starbucks.png",
                              ),
                               Productitem2(
                                productTitle: "Togg",
                                productSubtitle: "Yesterday",
                                productSubtitle2: "12.44 P.M.",
                                productTrailing: "\$ 128.00",
                                productLeading: "images/Togg.png",
                              ),
                            ],
                          ),
                  
                        ),
                            Container(
                              height: 50.0,
                              width: 450,
                              child: GestureDetector(
                              child: Container(
                              decoration: BoxDecoration(
                              border: Border.all(
                              color: Colors.grey,            
                        ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),),
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            Center(
                              child: Text(
                              "See All Transactions",
                              style: TextStyle(
                              color: Colors.white,                                
                              fontSize: 16
                                ),), )],),),
                                   ), ) ], ), )
                                      ], ), ],) ], ),
                                         ],),),),),),
           
                        Row(//Menu Konumlandırma Ve Fonskiyon
                       children: [
                       Container(
                       child: MenuAciksa ? Positioned(
                       child: MediaDrawerMini(),
                      ) : Positioned(width:0,height:0,child: Text(''),), ),
                      ], ), ], ),  );  }
                else{
                  return Row(
                  children: [
                  Expanded(child: Container(color:Color.fromARGB(255, 58, 50, 105)))
                  ],
                    );
                       }
                          }
    
                return Scaffold(
                  body: Column(children: [
                  MediaAppBar(
                  MenuTiklama: () =>{
                if(MenuAciksa){
                  setState(() {
                  MenuAciksa=false;
                  },
                    ) 
                      }
              else{
                setState(() {
                MenuAciksa=true;
              },
                ) 
                  }
                    },
                      ),
                Expanded(
                child:buildScreen())
              ]
                ),
                  );
                    }
                        } 