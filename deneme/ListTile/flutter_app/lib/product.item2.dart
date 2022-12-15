// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Productitem2 extends StatelessWidget {

    final String productTitle;
    final String productSubtitle;
    final String productSubtitle2;
    final String productTrailing;
    final String productLeading;
   
  const Productitem2({
    Key? key,
   required this.productTitle,
   required this.productSubtitle,
   required this.productSubtitle2,
   required this.productTrailing,
   required this.productLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(productTitle, style: TextStyle(color: Colors.white),),    
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,       
                  children: [                         
                    Text(productSubtitle, style: TextStyle(color: Colors.white),),
                    Text(productSubtitle2, style: TextStyle(color: Colors.white),),
                  ],
      ),
      trailing: Container(
        child: 
        Text(productTrailing, style: TextStyle(color: Colors.white),)),    
      leading: SizedBox(
        width: 80,
        height: 60,
        child: Container
        (
          height: 20,
          decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage(productLeading,), 
            )
          ),
         ),
        
      ),
    );
  }
}
