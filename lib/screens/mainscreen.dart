import 'package:cartify/refactor/mycard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(elevation: 5,
              floating: true,
              pinned: false,
              snap: false,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_list_sharp,
                  color: primaryColor,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      const Text(
                        "New Arrivals",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ansaf",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "ansaf",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyCard(
                        productdetails: "Jordan 23 Engineered",
                        productprice: "₹2,000",
                        cutprice: "₹4,000",
                        img: "assets/dress/1.png",
                        productname: "Nike",
                      ),
                      MyCard(
                        productdetails: "Crew-Neck Sweatshirt",
                        productprice: "₹2,000",
                        cutprice: "₹4,000",
                        img: "assets/dress/2.png",
                        productname: "Nike",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      const Text(
                        "Category",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ansaf",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "ansaf",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MySecondCard(img2: "assets/dress/3.png"),
                      MySecondCard(img2: "assets/dress/4.png")
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Popular",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ansaf",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 180,),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "ansaf",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyCard(
                        productdetails: "Nike Air Max Ap",
                        productprice: "₹6,000",
                        cutprice: "₹7,000",
                        img: "assets/dress/5.png",
                        productname: "Nike",
                      ),
                      MyCard(
                        productdetails: "Nike Impact 4V",
                        productprice: "₹5,000",
                        cutprice: "₹6,000",
                        img: "assets/dress/6.png",
                        productname: "Nike",
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
