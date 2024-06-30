import 'package:cartify/pages/bottomnav.dart';
import 'package:cartify/pages/homescreen.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "cartify",
      home: Splash(),
      
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/login/logoo.svg',
              width: 177,
              height: 168,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 60,
            right: 60,
            child: MyButton(col: buttoncolor, width: 260,
        height: 48,
            texsize: 16,
            isoutline: true,
            textcolor: buttoncolor,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                text: "GET STARTED"),
          ),
        ],
      ),
    );
  }
}
