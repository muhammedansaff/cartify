import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/refactor/factor.dart';
import 'package:cartify/screens/loading/loading.dart';
import 'package:cartify/screens/profile/adress.dart';
import 'package:cartify/screens/payment/payment.dart';
import 'package:cartify/tiles/addresstile.dart';

import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          "Checkout",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Text(
              "Address",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: AddressTile(
              mainAddress: "Home",
              subAddress: "Oxford,Oxford Towers \n 560017 Banglore",
              isSelected: false,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: MyButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Address()));
                },
                text: "Change Adress",
                col: Colors.white,
                textcolor: primaryColor,
                isoutline: false,
                height: 40,
                bordercolor: primaryColor,
                width: 300,
                texsize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Text(
              "Payment",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Container(
              width: 306,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                      color: Colors.black38)
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Image.asset("assets/upi/1.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "******5536",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Payment(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: primaryColor,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const MyText(
              hor: 35,
              bold: true,
              first: "Price",
              second: "₹12000.00",
              col: Color(0xff717171)),
          const MyText(
              hor: 35,
              bold: true,
              first: "Discount",
              second: "₹0",
              col: Color(0xff717171)),
          const MyText(
              hor: 35,
              bold: true,
              first: "Shipping",
              second: "₹100.00",
              col: Color(0xff717171)),
          const MyText(
              hor: 35,
              bold: true,
              first: "Total Amount",
              second: "₹12100.00",
              col: Colors.black),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: MyButton(
                onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentProcessingScreen()));},
                text: "Pay Now",
                col: primaryColor,
                textcolor: Colors.white,
                isoutline: true,
                height: 42,
                width: 330,
                texsize: 16),
          )
        ],
      ),
    );
  }
}
