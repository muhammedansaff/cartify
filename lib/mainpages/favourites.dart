import 'package:cartify/refactor/whislist.dart';
import 'package:cartify/utils/colors.dart';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 30,
        ),
        centerTitle: true,
        title: const Text(
          "Wishlist",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body:  const Center(
        child: Column(
          children: [
            Whistlist(
              img: "assets/dress/5.png",
              price: '₹6,000',
              name: "Nike Air Max Ap",
            ),
            SizedBox(height: 10,),
            Whistlist(
              img: "assets/dress/6.png",
              price: '₹6,000',
              name: "Nike Impact 4V",
            ),
           
          ],
        ),
      ),
    );
  }
}
