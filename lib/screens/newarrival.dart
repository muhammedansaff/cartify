import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class arrivalscreen extends StatelessWidget {
  const arrivalscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List img = [
      "assets/popular/1.png",
      "assets/popular/2.png",
      "assets/popular/3.png"
    ];

    // Create a PageController
    final PageController _pageController = PageController();

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
        title: const Hero(
          tag: "popular",
          child: Material(
            color: Colors.transparent,
            child: Text(
              "Popular",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "ansaf",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Adjust spacing as needed
          Expanded(
            child: Row(
              
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Image.asset(img[index]),
                      );
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
