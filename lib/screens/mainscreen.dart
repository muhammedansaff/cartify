import 'package:cartify/refactor/mycard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/colors.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.filter_list_sharp,
            color: primaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Arrivals",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "ansaf",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: "ansaf",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCard(
                    productdetails: "Jordan 23 Engineered",
                    productprice: "₹2,000",
                    cutprice: "₹4,000",
                    img: "assets/dress/1.png",
                    productname: "Nike",
                  ),
                  MyCard(
                    productdetails: "Crew-Neck Sweatshirt",
                    productprice: "₹2,000",
                    cutprice: "₹4,000",
                    img: "assets/dress/2.png",
                    productname: "Nike",
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "ansaf",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: "ansaf",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  MySecondCard(img2: "assets/dress/3.png"),
                  SizedBox(width:16,),
                  MySecondCard(img2: "assets/dress/4.png")
                ],
              ), const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "ansaf",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: "ansaf",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCard(
                    productdetails: "Nike Air Max Ap",
                    productprice: "₹6,000",
                    cutprice: "₹7,000",
                    img: "assets/dress/5.png",
                    productname: "Nike",
                  ),
                  MyCard(
                    productdetails: "Nike Impact 4V",
                    productprice: "₹5,000",
                    cutprice: "₹6,000",
                    img: "assets/dress/6.png",
                    productname: "Nike",
                  )
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
