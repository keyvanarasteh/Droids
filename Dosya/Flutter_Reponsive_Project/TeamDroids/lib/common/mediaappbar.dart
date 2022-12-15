// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';

class MediaAppBar extends StatelessWidget {
 
 final Function()? MenuTiklama;
 
  const MediaAppBar({super.key, this.MenuTiklama});

String ekranTanimla(double width){  // AppBar Responsive Boyutlandırma
if(width<=576){ // Mobile
  return "mobile"; 
}
else if(width<=768){ // Tablet
  return "tablet";
}
else if(width<=992){     // Desktop
  return "desktop";
}
else{                       //Large
  return "large";
}
}

 Widget appBar(BuildContext, String device){

    if(device=="mobile" || device == 'tablet'){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row( //AppBar Menu Icon - AppBar Logo
          children: [
          SizedBox(width: 10,),
          InkWell(
          onTap:MenuTiklama,
          child: Icon(Icons.menu)),
          SizedBox(width: 10,),
          Image.asset('assets/images/logo_mini.jpg'),  // ppBar Logo
        ],
      ),
          Row(   // // AppBar 2 Icon - User Logo Card
          children: [
          Container( // Mail Icon
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
          color:Color(0xFF241B2E),
          shape: BoxShape.circle,
        ),
          child:Icon(Icons.mail_outline_outlined,)
        ),
          SizedBox(width: 10,),
          Container( //Notfication Icon
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
          color:Color(0xFF241B2E),
          shape: BoxShape.circle,
        ),
          child: Icon(Icons.notifications_none_sharp,)
        ),
          SizedBox(width: 3.0,),
          Container( // User Logo Text
          padding: EdgeInsets.only(right: 20),
          height: 32,
          decoration: BoxDecoration(
          color:Color(0xFF241B2E),
          borderRadius: BorderRadius.circular(10),
        ),
              child:Row(children: [
                CircleAvatar(
                  radius:22 ,
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
 
    
   if(device=="desktop" || device == 'large'){
        return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(    // AppBar Menu Icon - AppBar Logo
            children: [
             InkWell(
              onTap: MenuTiklama,
              child: Icon(Icons.menu)),
              SizedBox(width: 10,),
              Image.asset('assets/images/logo.jpg'),
            ],
          ),
          Row(children: [ // AppBar Text
            Text("Dashboard", 
            style:TextStyle(
            fontSize:22, color:Colors.white,
                   
                ),)
          ],),
        Row(children: [       // AppBar Search - AppBar Card
          Container(            
              height: 38,
              width: 122,
              decoration: BoxDecoration(
               color:Color(0xFF241B2E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
              decoration:
              InputDecoration(
              prefixIcon: Icon(Icons.search,
              color:Color(0xFF9088E4),
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
              border:InputBorder.none,
                        ),
                      ),
                    ),
                  SizedBox(width: 10,),
            Container(
            child: Padding(
              padding: const EdgeInsets.only(top:11.0),
              child: Text('Add Card',
              textAlign: TextAlign.center,
              ),
            ),
              width:110,
       
         height: 38,
          
              decoration: BoxDecoration(
                //color:Color.fromARGB(255, 156, 158, 187).withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
                color:Color(0xFF8320B1)


              ),
         
            )
        ],),
        Row(   // // AppBar 2 Icon - User Logo Card
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:Color(0xFF241B2E),
                shape: BoxShape.circle,
              ),
            child:Icon(Icons.mail_outline_outlined,)
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color:Color(0xFF241B2E),
                shape: BoxShape.circle,
              ),
            child: Icon(Icons.notifications_none_sharp,)
            ),
             SizedBox(width: 3.0,),
               Container(  // Icon sağ tarafı user container
              padding: EdgeInsets.only(right: 20),
              height: 32,
              decoration: BoxDecoration(
               color:Color(0xFF241B2E),
                 borderRadius: BorderRadius.circular(10),
              
              ),
              child:Row(children: [
                CircleAvatar(
                  radius:22 ,
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
    else{
   return Text('large');
    }
  }

// AppBar Style Kısmı - AppBar Media

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);
    return Container(
      color: Color(0xFF191321 ),
      height: 60,
      width: double.infinity,
      child:appBar(context, device)
    );
  }
}