import 'package:cartify/tiles/tracktile.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackScreen extends StatelessWidget {
  final bool ishistory;
  const TrackScreen({super.key,required this.ishistory});

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
        title:  Text(
          ishistory ? "Track Order":"Order History",
          style: const TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body:  Center(
        child:  Column(
          children: [
            TrackOrder(isbutton: ishistory,
            istrack: true,
                ordernum: "Order Id-#12346677",
                img: "assets/fav/1.png",
                name: "Nike Air Max Ap",
                price: "₹6000",
                date: "Expected Deliver on 04-10-24"),
            SizedBox(height: 20,),
            TrackOrder(isbutton: ishistory,
            istrack: true,
                ordernum: "Order Id-#1484511",
                img: "assets/fav/2.png",
                name: "Nike Impact Av",
                price: "₹6000",
                date: "Expected Deliver on 04-15-24"),
              
          ],

        ),
      ),
    );
  }
}
