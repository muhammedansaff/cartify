import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/refactor/size.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatelessWidget {
  final String img;
  final String name;
  final String productname;
  final String price;
  const ProductScreen(
      {super.key,
      required this.price,
      required this.img,
      required this.name,
      required this.productname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 5, spreadRadius: 2, offset: Offset(0, 2))
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              price,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),SizedBox(width: 35,),
            MyButton(
                onPressed: () {},
                text: "Add to Cart",
                col: primaryColor,
                textcolor: Colors.white,
                isoutline: true,
                height: 48,
                width: 250,
                texsize: 25)
          ],
        ),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
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
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 315),
              child: Text(
                productname,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 315),
              child: Text(
                "Size",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 85),
              child: NumberRow(),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 305),
              child: Text(
                "Color",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: ColorRow(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                "Product Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                "Experience the perfect blend of style and functionality with our ${name}. Designed for those who value quality and elegance,",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210),
              child: Text(
                "Customer Review",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomerCard(
              img: "assets/popular/13.png",
              name: "tony",
              review: "Confortable to View",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomerCard(
                img: "assets/popular/12.png",
                name: "Alen",
                review: "Perfect fit")
          ],
        ),
      ),
    );
  }
}
