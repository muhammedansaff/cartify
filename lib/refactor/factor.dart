import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCart extends StatefulWidget {
  final String name;
  final String img;
  const MyCart({super.key, required this.name,required this.img});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int num = 0;
  void add() {
    setState(() {
      num = num + 1;
    });
  }

  void sub() {
    if (num != 0) {
      setState(() {
        num = num - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  blurStyle: BlurStyle.outer,
                  color: Colors.black54,
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(1, 0))
            ],
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF6F6F6)),
        width: 330,
        height: 100,
        child: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image:  DecorationImage(
                    image: AssetImage(widget.img)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              top: 35,
              left: 105,
              child: Text(
                widget.name,
                style: const TextStyle(
                    color: Colors.black, fontFamily: "ansaf", fontSize: 16),
              ),
            ),
            const Positioned(
              top: 55,
              left: 105,
              child: Text(
                "₹6,000",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "ansaf",
                    fontSize: 16),
              ),
            ),
            Positioned(
              right: 0,
              top: 40,
              child: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(50)
                   ),
                child: Stack(
                  children: [
                    Positioned(
                    right: 35,
                    bottom: -3,
      
                      child: TextButton(
                        onPressed: () {sub();},
                        child: const Icon(Icons.minimize),
                      ),
                    ),
                    Positioned(right: 32,
                    bottom: 2,
                      child: Text(
                        num.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "ansaf",
                            fontSize: 16),
                      ),
                    ),
                    Positioned(
                      left: 35,
                    bottom: -10,
                      child: TextButton(onPressed: () {add();}, child: const Icon(Icons.add))),
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
