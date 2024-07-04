import 'package:cartify/refactor/mycard.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class arrivalscreen extends StatelessWidget {
  const arrivalscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List img = [
      "assets/popular/1.png",
      "assets/popular/2.png",
      "assets/popular/3.png"
    ];
    List img2 = [
      "assets/popular/4.png",
      "assets/popular/5.png",
      "assets/popular/6.png",
      "assets/popular/7.png",
      "assets/popular/8.png",
      "assets/popular/9.png",
    ];
    List price = [
      "₹6,000",
      "₹2,000",
      "₹3,500",
      "₹2,500",
      "₹6,000",
      "₹8,500",
    ];
    List cutprice = [
      "₹8,000",
      "₹4,000",
      "₹5,500",
      "₹4,500",
      "₹8,000",
      "₹9,500",
    ];
    List name = [
      "Roadster",
      "Allen Solly",
      "Nike",
      "Casio",
      "Casio",
      "Levis",
    ];
    List productdetails = [
      "Slim Fit Shirt",
      "Casual T-Shirt",
      "Nike Impact 4v",
      "GA-2100-1a",
      "EFR-574D",
      "Blue Jeans",
    ];

    // Create a PageController
    final PageController _pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Hero(
          tag: "popular",
          child: Material(
            color: Colors.transparent,
            child: Text(
              "Popular",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "ansaf",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 290,
            width: 218, // Set a fixed height for the PageView container
            child: PageView.builder(
              controller: _pageController,
              itemCount: img.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(img[index], fit: BoxFit.cover);
              },
            ),
          ),
          SizedBox(height: 20), // Adjust spacing as needed
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 383, // Fixed height for the GridView container
              child: GridView.builder(
               itemCount: img2.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
            mainAxisExtent: 220,
             // Adjusted height of each item
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return MyCard(
                    img: img2[index],
                    cutprice: cutprice[index],
                    productname: name[index],
                    productdetails: productdetails[index],
                    productprice: price[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
