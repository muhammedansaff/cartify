
import 'package:flutter/material.dart';


class MyCart extends StatefulWidget {
  final String name;
  final String img;
  const MyCart({super.key, required this.name, required this.img});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int num = 1;
  bool align = false;
  void add() {
    setState(() {
      num = num + 1;
      if (num > 9) {
        setState(() {
          align = true;
        });
      }
    });
  }

  void sub() {
    if (num != 0) {
      setState(() {
        num = num - 1;
        if (num < 10) {
          setState(() {
            align = false;
          });
        }
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
                image: DecorationImage(image: AssetImage(widget.img)),
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
              right: 5,
              top: 40,
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Positioned(
                      right: 25,
                      bottom: -3,
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          sub();
                        },
                        child: const Icon(
                          Icons.minimize,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      right: align ? 25 : 28,
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
                      left: 25,
                      bottom: -10,
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          add();
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
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

class MyText extends StatelessWidget {
  final bool bold;
  final String first;
  final String second;
  final Color col;
  final double hor;
  const MyText(
      {super.key,
      required this.bold,
      required this.first,
      required this.second,
      required this.hor,
      required this.col});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: hor,vertical: 3),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            first,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: col,
                fontFamily: "ansaf",
                fontSize: 18),
          ),
          Text(
            second,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: col,
                fontFamily: "ansaf",
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
