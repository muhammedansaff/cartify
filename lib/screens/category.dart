import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  const Categoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List img = [
      "assets/category/1.png",
      "assets/category/2.png",
      "assets/category/3.png",
      "assets/category/4.png",
      "assets/category/5.png",
      "assets/category/6.png",
    ];

    List name = [
      "Footwear",
      "T-shirts",
      "Shirts",
      "Watches",
      "Trousers",
      "Accessories",
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
          tag: "category",
          child: Material(
            color: Colors.transparent,
            child: Text(
              "Category",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "ansaf",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: GridView.builder(
          itemCount: img.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 220,
            // Adjusted height of each item
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 168,
              height: 197,
              child: Column(
                children: [
                  Image.asset(img[index]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(name[index]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
