import 'package:cartify/refactor/mycard.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController shirtController = TextEditingController();
  List<String> img2 = [
    "assets/shirts/1.png",
    "assets/shirts/2.png",
    "assets/shirts/3.png",
    "assets/shirts/4.png",
  ];
  List<String> price = [
    "₹6,000",
    "₹2,000",
    "₹3,500",
    "₹2,500",
  ];
  List<String> cutprice = [
    "₹8,000",
    "₹4,000",
    "₹5,500",
    "₹4,500",
  ];
  List<String> name = [
    "Roadster",
    "Allen Solly",
    "Nike",
    "Casio",
    "Casio",
    "Levis",
  ];
  List<String> productdetails = [
    "Allen Solly",
    "Levis",
    "Levis",
    "Allen Solly",
  ];

  @override
  void initState() {
    super.initState();
    shirtController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    shirtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool showGridView = shirtController.text.toLowerCase() == "shirts";
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
          showGridView ? "Results for Shirts": "Search",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: const Icon(Icons.format_align_center),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  controller: shirtController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: primaryColor,
                    ),
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (showGridView)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.builder(
                  itemCount: img2.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 220,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return MyCard(
                      img: img2[index],
                      cutprice: cutprice[index],
                      productname: name[index],
                      productdetails: productdetails[index],
                      productprice: price[index],
                    );
                  },
                ),
              )
            else
              Column(
                children: [
                  SizedBox(height: 200,),
                  Center(
                    child: SvgPicture.asset(
                      'assets/login/search.svg',
                      width: 100,
                      height: 100,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "What Are You looking for?",
                        style: TextStyle(color: Colors.grey[400], fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}