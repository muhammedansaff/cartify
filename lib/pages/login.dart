import 'dart:async';

import 'package:cartify/pages/signup.dart';
import 'package:cartify/pages/bottomnav.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/refactor/mytextfield.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  bool _isLoading = false;

  void _onChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  void _submitForm() {
    // Validate the form
    if (_formKey.currentState!.validate()) {
      // Start loading state
      setState(() {
        _isLoading = true;
      });

      // Simulate a delay before navigating
      Timer(Duration(seconds: 3), () {
        // Navigate to SignupScreen after 3 seconds
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNav(),
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
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "WELCOME BACK!",
                            style: TextStyle(
                              fontFamily: "ansaf",
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Mytextfield(
                            type: "email",
                            icon: Icons.mail_sharp,
                            hinttext: "Email Id",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Mytextfield(
                            type: "create",
                            icon: Icons.lock,
                            hinttext: "Password",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 48,
                              ),
                              Checkbox(
                                activeColor: Colors.black,
                                checkColor: Colors.white,
                                value: _isChecked,
                                onChanged: _onChanged,
                              ),
                              const Text(
                                "Remember me",
                                style: TextStyle(
                                    fontFamily: "ansaf", fontSize: 12),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              const Text(
                                "Forget Password?",
                                style: TextStyle(
                                    fontFamily: "ansaf",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          _isLoading
                              ? CircularProgressIndicator(
                                  color: buttoncolor,
                                ) // Show CircularProgressIndicator while loading
                              : MyButton(
                                  width: 260,
                                  height: 48,
                                  onPressed: _submitForm,
                                  text: "LOGIN",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
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
                                      builder: (context) =>
                                          const SignupScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
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
