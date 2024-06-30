import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCard extends StatefulWidget {
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
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 202,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(
                0, 1), // changes position of shadow to bottom sides
          ),
        ],
      ),
      child: Stack(
        children: [
          Image.asset(widget.img),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: primaryColor,
              ),
              onPressed: toggleFavorite,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 10,
            child: Text(
              widget.productname,
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
              widget.productdetails,
              style: const TextStyle(
                  color: Colors.black, fontSize: 13, fontFamily: "ansaf"),
            ),
          ),
          Positioned(
            bottom: 13,
            left: 10,
            child: Text(
              widget.productprice,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "ansaf"),
            ),
          ),
          Positioned(
            bottom: 13,
            left: 60,
            child: Text(
              widget.cutprice,
              style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ansaf"),
            ),
          ),
        ],
      ),
    );
  }
}

class MySecondCard extends StatelessWidget {
  final String img2;
  const MySecondCard({super.key, required this.img2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      width: 168,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        
      ),
      child: Image.asset(img2),
    );
  }
}
