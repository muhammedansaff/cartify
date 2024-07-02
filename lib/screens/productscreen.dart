import 'package:cartify/refactor/size.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatelessWidget {
  final String img;
  final String name;
  final String productname;
  const ProductScreen(
      {super.key,
      required this.img,
      required this.name,
      required this.productname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("assets/login/smalllogo.svg"),
        centerTitle: true,
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
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            color: primaryColor,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Container(
              width: 180,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(img),
                  )),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 215),
            child: Text(
              productname,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55),
            child: Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text(
              "Size",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          NumberRow()
        ],
      ),
    );
  }
}
