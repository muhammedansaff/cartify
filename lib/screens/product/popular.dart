import 'package:cartify/pages/homescreen.dart';
import 'package:cartify/refactor/mycard.dart';
import 'package:cartify/mainpages/mainscreen.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List img = [
      "assets/arrival/1.png",
      "assets/arrival/2.png",
      "assets/arrival/3.png",
      "assets/arrival/4.png",
      "assets/arrival/5.png",
      "assets/arrival/6.png",
      "assets/arrival/7.png",
      "assets/arrival/8.png"
    ];
     List price = [
      "₹6,000",
      "₹2,000",
      "₹3,500",
      "₹2,500",
      "₹6,000",
      "₹8,500",
      "₹1,000",
      "₹6,000"
    ];
    List cutprice = [
      "₹8,000",
      "₹4,000",
      "₹5,500",
      "₹4,500",
      "₹8,000",
      "₹9,500",
      "₹2,000",
      "₹8,000"
    ];
     List name = [
      "Nike",
      "Levis",
      "Levis",
      "Allen Solly",
      "Nike",
      "Casio",
      "Rolex",
      "Ray Ban"
    ];
     List productdetails = [
      "Nike Air Max Ap",
      "Navy Slim Fit",
      "Blue Slim Fit T-Shirt",
      "Black Casual Trousers",
      "Nike Impact 4v",
      "GA-2100-1a",
      "EFR-574D",
      "Marshal"
    ];
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
          tag: "arrival",
          child: Material(
            color: Colors.transparent,
            child: Text(
              "New Arrivals",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "ansaf",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: GridView.builder(
          itemCount: img.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 220,
             // Adjusted height of each item
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return MyCard(
        img: img[index],
        cutprice: cutprice[index],
        productname: name[index],
        productdetails: productdetails[index],
        productprice: price[index],
            );
          },
        ),
      ),
    );
  }
}
