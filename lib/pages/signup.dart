import 'dart:async';

import 'package:cartify/pages/login.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/refactor/mytextfield.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}final _signupkey = GlobalKey<FormState>();
bool _isLoading=false;
class _SignupScreenState extends State<SignupScreen> { void _submitForm() {
    // Validate the form
    if (_signupkey.currentState!.validate()) {
      // Start loading state
      setState(() {
        _isLoading = true;
      });

      // Simulate a delay before navigating
      Timer(const Duration(seconds: 3), () {
        // Navigate to SignupScreen after 3 seconds
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 139.5,
            child: Hero(
              tag: "img",
              child: SvgPicture.asset(
                'assets/login/logoo.svg',
                width: 157,
                height: 111,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Hero(
              tag: "hello",
              child: Material(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  width: 389,
                  height: 600,
                  child: Form(
                    key: _signupkey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "WELCOME",
                            style: TextStyle(
                              fontFamily: "ansaf",
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),const Mytextfield(type: "name",
                            icon: Icons.person,
                            hinttext: "Full Name",
                          ),const SizedBox(
                            height: 15,
                          ),
                          const Mytextfield(type: "email",
                            icon: Icons.mail_sharp,
                            hinttext: "Email Id",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          
                           const Mytextfield(type: "create",
                            icon: Icons.key,
                            hinttext: "Create Password",
                          ),const SizedBox(
                            height: 15,
                          ),
                           const Mytextfield(type: "confirm",
                            icon: Icons.lock,
                            hinttext: "Confirm Password",
                          ),
                          
                          const Row(
                            children: [
                              SizedBox(
                                width: 48,
                              ),
                              
                              SizedBox(
                                width: 45,
                              ),
                              
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),_isLoading?CircularProgressIndicator(color: buttoncolor,):
                          MyButton( width: 260,
        height: 48,
                            onPressed:(){_submitForm();},
                            text: "Sign Up",
                            col: buttoncolor,
                            textcolor: Colors.white,
                            isoutline: true,
                            texsize: 16,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "or",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "ansaf",
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          SvgPicture.asset(
                            'assets/login/google.svg',
                            width: 96,
                            height: 38,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              const Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "ansaf",
                                    fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "ansaf",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}