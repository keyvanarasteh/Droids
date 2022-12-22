// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {

  final String productName;
//final String productPrice;


  const ProductItem({
    Key? key,
    required this.productName,
    // required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 5,left: 5,top: 8,),
        child: Container(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child:Text(productName,
                              style:TextStyle(
                                fontSize: 14,
                                color:Colors.grey,
                                fontWeight: FontWeight.w500,
                              )),
                          style: ElevatedButton.styleFrom(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            ),

                            //backgroundColor:(Color.fromARGB(255, 21, 26, 160)),
                            backgroundColor:(Color(0xFF0B0C1E)),

                          ),

                        ),


                      ],

                    ),

                  ],
                ),

              ),

            ],
          ),

        ),
      ),
    );
  }
}