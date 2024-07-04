
import 'package:cartify/pages/bottomnav.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/screens/loading/loading.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class FailedScreen extends StatefulWidget {
  const FailedScreen({super.key});

  @override
  _FailedScreenState createState() => _FailedScreenState();
}

class _FailedScreenState extends State<FailedScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 0.1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();

    // Start a timer to navigate to the FailedScreen after 2 seconds
    // Timer(Duration(seconds: 2), () {
    //   Navigator.of(context).pushReplacement(
    //     PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) =>
    //           FailedScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         var begin = Offset(1.0, 0.0);
    //         var end = Offset.zero;
    //         var curve = Curves.easeInOut;

    //         var tween =
    //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     ),
    //   );
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -200, // Adjust this value to position the icon correctly
            left: -400, // Adjust this value to position the icon correctly
            child: ScaleTransition(
              scale: _animation,
              child: Icon(
                Icons.cancel,
                size: 1200,
                color: Colors.red,
              ),
            ),

          ),
           Positioned(
            left: 70,
            top: 180,
             child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
             SizedBox(height: 280),
             
              Text(
                'ORDER FAILED!',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 80),
              MyButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>  PaymentProcessingScreen()),
                  );
                },
                text: "Retry",
                col: buttoncolor,
                textcolor: Colors.white,
                isoutline: true,
                height: 48,
                width: 250,
                texsize: 16,
              ),
              SizedBox(height: 10),
              MyButton(
                onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));},
                text: "Home",
                col: Colors.white,
                textcolor: primaryColor,
                isoutline: false,
                height: 48,
                width: 250,
                texsize: 16,
                bordercolor: Colors.white,
              ),
                       ],
                     ),
           ),
        ],
      ),
    );
  }
}

