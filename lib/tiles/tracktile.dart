import 'package:cartify/pages/bottomnav.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/screens/order/ordertrack.dart';
import 'package:cartify/utils/colors.dart';

import 'package:flutter/material.dart';

class TrackOrder extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  final String date;
  final String ordernum;
  final bool isbutton;
  final bool istrack;
  const TrackOrder(
      {super.key,
      required this.istrack,
      required this.ordernum,
      required this.isbutton,
      required this.img,
      required this.name,
      required this.price,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 310,
        height: isbutton ? 150 : 100,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              blurStyle: BlurStyle.outer,
              color: Colors.black54,
              blurRadius: 7,
              spreadRadius: 1,
              offset: Offset(0, 2))
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                width: 68,
                height: 85.89,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(img),
              ),
            ),
            Positioned(
              top: 10,
              left: 85,
              child: Text(
                ordernum,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "ansaf",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 35,
              left: 85,
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.black, fontFamily: "ansaf", fontSize: 16),
              ),
            ),
            Positioned(
              top: 60,
              left: 85,
              child: Text(
                price,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "ansaf",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 85,
              left: 85,
              child: Text(
                date,
                style:  TextStyle(
                    color: istrack ? Colors.grey:primaryColor,
                    fontFamily: "ansaf",
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child:isbutton ?  MyButton(
                  width: 291,
                  height: 32,
                  onPressed: () {
                   istrack ?  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderStatusPage(img: img, date: date, name: name, orderid: ordernum, price: price))): Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNav()));
                  },
                  
                  text:istrack ?  "Track Order" : "Shop Now",
                  col: primaryColor,
                  textcolor: Colors.white,
                  isoutline: true,
                  texsize: 14):const SizedBox(height: 5,)
            ),
          ],
        ),
      ),
    );
  }
}
