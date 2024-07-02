import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/utils/colors.dart';

import 'package:flutter/material.dart';

class Whistlist extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  const Whistlist(
      {super.key, required this.img, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 310,
          height: 136,
          decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(blurStyle: BlurStyle.outer,
                          color: Colors.black54,
                          blurRadius: 7,
                          spreadRadius: 1,
                           offset: Offset(0, 2)
                          )
                    ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 68,
                  height: 85.89,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(img),
                ),
              ),
              Positioned(
                top: 20,
                left: 85,
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.black, fontFamily: "ansaf", fontSize: 16),
                ),
              ),
              Positioned(
                top: 40,
                left: 85,
                child: Text(
                  price,
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: "ansaf",
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 30,
                right: 10,
                child: Icon(
                  Icons.favorite,
                  color: primaryColor,
                  size: 30,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: MyButton(
                    width: 291,
                    height: 32,
                    onPressed: () {},
                    text: "add to cart",
                    col: primaryColor,
                    textcolor: Colors.white,
                    isoutline: true,
                    texsize: 14),
              )
            ],
          )),
    );
  }
}
