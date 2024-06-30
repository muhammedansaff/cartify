import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCard extends StatelessWidget {
  final String img;
  final String productname;
  final String productdetails;
  final String productprice;
  final String cutprice;
  const MyCard(
      {super.key,
      required this.img,
      required this.cutprice,
      required this.productname,
      required this.productdetails,
      required this.productprice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 202,
      decoration: BoxDecoration(
      
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 4,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow to bottom sides
          ),
        ],
      ),
      child: Stack(
        children: [
          Image.asset(img),
          Positioned(
              top: 5,
              right: 5,
              child: Icon(
                Icons.favorite_border,
                color: primaryColor,
              )),
          Positioned(
            bottom: 40,
            left: 10,
            child: Text(
              productname,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 12,
                  fontFamily: "ansaf"),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 10,
            child: Text(
              productdetails,
              style: const TextStyle(
                  
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "ansaf"),
            ),
          ),
          Positioned(
            bottom: 13,
            left: 10,
            child: Text(
              productprice,
              style: const TextStyle(
                   fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "ansaf"),
            ),
          ),Positioned(
            bottom: 13,
            left: 60,
            child: Text(
              cutprice,
              style:  const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ansaf"),
            ),
          )
        ],
      ),
    );
  }
}
class MySecondCard extends StatelessWidget {
 final String img2;
  const MySecondCard({super.key,required this.img2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      width: 168,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.asset(img2),
    );
  }
}