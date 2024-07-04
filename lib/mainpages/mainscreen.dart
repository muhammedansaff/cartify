import 'package:carousel_slider/carousel_slider.dart';
import 'package:cartify/refactor/mycard.dart';
import 'package:cartify/screens/product/popular.dart';
import 'package:cartify/screens/product/category.dart';
import 'package:cartify/screens/product/newarrival.dart';
import 'package:cartify/mainpages/progilescreen.dart';
import 'package:cartify/screens/profile/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List img = [
  "assets/banner/1.png",
  "assets/banner/2.png",
  "assets/banner/3.png"
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 5,
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
              title: SvgPicture.asset("assets/login/smalllogo.svg"),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
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
                  const SizedBox(
                    height: 10,
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 125,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      width: 324.5,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(img[itemIndex]),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Material(
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
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const arrivalscreen()));
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "ansaf",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
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
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Material(
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
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Categoryscreen()));
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "ansaf",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
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
                      const Material(
                        color: Colors.transparent,
                        child: Text(
                          "Popular",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "ansaf",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()));
                        },
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
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
