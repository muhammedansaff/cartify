import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            )),
        centerTitle: true,
        title: const Text(
          "Search",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 30,
            child: SizedBox(
                width: 330,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:  Icon(Icons.search,color: primaryColor,),
                    hintText: 'Search',
                    contentPadding:
                    
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                  ),
                )),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/login/search.svg',
              width: 100,
              height: 100,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Center(
              child: Text(
                "What Are You looking for?",
                style: TextStyle(color: Colors.grey[400], fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
