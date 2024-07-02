import 'package:cartify/pages/login.dart';
import 'package:cartify/pages/signup.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 440,
            left: 100,
            child: Hero(
              tag: "img",
              child: SvgPicture.asset(
                'assets/login/logoo.svg',
                width: 185,
                height: 172,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Hero(
              tag: "hello",
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                width: 389,
                height: 309,
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "HELLO!",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "ansaf",
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyButton(
                        texsize: 16,
                        width: 260,
                        height: 48,
                        isoutline: true,
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const LoginScreen(),
                              transitionDuration: Duration(seconds: 2),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0);
                                const end = Offset.zero;
                                const curve = Curves.ease;

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        text: "LOGIN",
                        col: buttoncolor,
                        textcolor: Colors.white),
                    SizedBox(
                      height: 25,
                    ),
                    MyButton(
                      width: 260,
                      height: 48,
                      texsize: 16,
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    SignupScreen(),
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(0.0, 1.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      text: "SIGN UP",
                      col: Colors.white,
                      textcolor: buttoncolor,
                      isoutline: false,
                      bordercolor: buttoncolor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
