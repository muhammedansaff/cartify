
import 'package:cartify/tiles/tracktile.dart';
import 'package:flutter/material.dart';

import 'package:cartify/utils/colors.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}



class _NotificationScreenState extends State<NotificationScreen> {
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
          "Notification",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TrackOrder(
              ordernum: "Flash Sale Alert Watches",
              isbutton: true,
              img: "assets/notification/1.png",
              name: "Limited Time offer\nget upto 50% off",
              price: "",
              date: "*new",
              istrack: false,
            ),
             SizedBox(
              height: 10,
            ),TrackOrder(
              ordernum: "Flash Sale Alert T-Shirts",
              isbutton: true,
              img: "assets/notification/2.png",
              name: "explore our latest collection \n of trendey t shirts",
              price: "",
              date: "*new",
              istrack: false,
            ) ,SizedBox(
              height: 10,
            ),
            TrackOrder(
              ordernum: "Buy One Get One",
              isbutton: true,
              img: "assets/notification/3.png",
              name: "Buy One, Get One! Shop for \n one pair of sunglasses",
              price: "",
              date: "*new",
              istrack: false,
            )
          ],
        ),
      ),
    );
  }
}
